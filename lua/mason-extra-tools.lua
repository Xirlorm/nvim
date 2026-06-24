-- ══════════════════════════════════════════════════════════════════════════
-- mason-extra-tools.lua
-- Automatically installs non-LSP Mason tools (formatters, linters, etc.)
-- after Mason itself has loaded.
--
-- Usage: require("mason-extra-tools") somewhere after your mason.setup() call,
-- or inline the setup() call as shown at the bottom.
-- ══════════════════════════════════════════════════════════════════════════

-- ── Notification handler ──────────────────────────────────────────────────
-- Fixes the issue of notification being passed via native vim notification
-- before the notification extension is loaded.
local M = {}

local function notify(msg, level)
	vim.schedule(function()
		vim.notify(msg, level, { title = "mason-extra-tools" })
	end)
end

-- ── Tool list ─────────────────────────────────────────────────────────────
-- Add or remove any registry name that `mason` knows about.
-- Full list: https://mason-registry.dev/registry/list
M.tools = {}

-- ── Core installer ────────────────────────────────────────────────────────
function M.ensure_installed(tools)
	local registry = require("mason-registry")

	-- Refresh the registry once, then install anything missing.
	registry.refresh(function()
		for _, tool_name in ipairs(tools) do
			local ok, pkg = pcall(registry.get_package, tool_name)

			if not ok then
				notify(
					("[Mason] Unknown package: %q — check the registry name."):format(tool_name),
					vim.log.levels.WARN,
					{ title = "mason-extra-tools" }
				)
			elseif not pkg:is_installed() then
				notify(
					("[Mason] Installing %q …"):format(tool_name),
					vim.log.levels.INFO,
					{ title = "mason-extra-tools" }
				)

				pkg:install():once("closed", function()
					if pkg:is_installed() then
						notify(
							("[Mason] ✓ %q installed."):format(tool_name),
							vim.log.levels.INFO,
							{ title = "mason-extra-tools" }
						)
					else
						notify(
							("[Mason] ✗ Failed to install %q."):format(tool_name),
							vim.log.levels.ERROR,
							{ title = "mason-extra-tools" }
						)
					end
				end)
			end
		end
	end)
end

-- ── Entry point ───────────────────────────────────────────────────────────
-- Call M.setup() after mason.setup(). Pass a `tools` table to override the
-- default list, or omit it to use M.tools above.
function M.setup(opts)
	opts = opts or {}
	local tools = opts.tools or M.tools

	-- Wait until Mason's registry is ready before trying to resolve packages.
	local registry = require("mason-registry")
	if registry.is_installed then
		-- Registry already initialised (e.g. lazy-loaded after VimEnter).
		M.ensure_installed(tools)
	else
		-- Register a one-shot autocmd that fires once Mason emits its ready event.
		vim.api.nvim_create_autocmd("User", {
			pattern = "MasonToolsUpdateCompleted", -- fires after :MasonUpdate
			once = true,
			callback = function()
				M.ensure_installed(tools)
			end,
		})

		-- Also run unconditionally on VimEnter so the first cold-start works.
		vim.api.nvim_create_autocmd("VimEnter", {
			once = true,
			callback = function()
				-- Small defer lets Mason finish its own setup first.
				vim.defer_fn(function()
					M.ensure_installed(tools)
				end, 100)
			end,
		})
	end
end

return M

-- ══════════════════════════════════════════════════════════════════════════
-- EXAMPLE: drop this block into your init.lua / plugins spec
-- ══════════════════════════════════════════════════════════════════════════
--
-- -- 1. Mason core (must come first)
-- require("mason").setup()
--
-- -- 2. LSP installer (optional — handles language servers only)
-- require("mason-lspconfig").setup({
--   ensure_installed = { "pyright", "ts_ls", "lua_ls" },
-- })
--
-- -- 3. Extra non-LSP tools  ← this file
-- require("mason-extra-tools").setup({
--   tools = {
--     "black",
--     "isort",
--     "prettier",
--     "tree-sitter-cli",
--     -- add more here, e.g. "stylua", "eslint_d", "shellcheck"
--   },
-- })
