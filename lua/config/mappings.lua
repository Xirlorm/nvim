local g = vim.g

-- #######################################################
-- key mappings
-- #######################################################
function OpenTerminal()
    local height = vim.o.lines * 0.25
    vim.cmd('belowright ' .. height .. 'split term://bash')
end

g.mapleader = 'g' --Set map leader to space
g.rustfmt_autosave = 1 -- On save, format rust code

-- open terminal window at bottom
vim.api.nvim_set_keymap('n', '<Leader>t', ':lua OpenTerminal()<CR>', { noremap = true, silent = true })
-- Unhighlight text using escape key
vim.cmd('nnoremap <esc> :noh<return><esc>')
