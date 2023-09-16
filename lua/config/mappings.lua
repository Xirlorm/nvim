-- #######################################################
-- key mappings
-- #######################################################
--[[ Unhighlight text using escape key ]]
vim.cmd('nnoremap <esc> :noh<return><esc>')

--[[ open terminal window at bottom ]]
function OpenTerminal()
    local height = vim.o.lines * 0.25
    vim.cmd('belowright ' .. height .. 'split term://bash')
end

vim.api.nvim_set_keymap('n', '<Leader>t', ':lua OpenTerminal()<CR>', { noremap = true, silent = true })

--[[ Check if the current buffer is a C++ file ]]
function CompileAndRunCpp()
	if vim.bo.filetype == 'cpp' then
		local output = vim.fn.expand('%:t:r')
		local flags = ' -ggdb -pedantic-errors -Wall -Weffc++ -Wextra -Werror -std=c++20 '
		local compile_cmd = 'g++ ' .. flags .. ' -o ' .. output .. ' ' .. vim.fn.expand('%')
		local run_cmd = 'term bash -c ./' .. output .. ';'

		local compile_status = vim.fn.system(compile_cmd)

		if compile_status == '' then
			local height = vim.o.lines * 0.25
			vim.cmd('belowright ' .. height .. ' split | ' .. run_cmd)
		else
				print(compile_status)
		end
	else
		print("Not a C++ file")
	end
end

vim.api.nvim_set_keymap( 'n', '<leader>cr',
[[:lua CompileAndRunCpp()<CR>]], { noremap = true, silent = true })
