-- Key mappings

-- Unhighlight selection when <esc> key is pressed
vim.cmd('nnoremap <esc> :noh<return><esc>')

-- Opens a terminal when <Leader>t keys are input
function OpenTerminal()
    local height = vim.o.lines * 0.25
    vim.cmd('belowright ' .. height .. 'split term://bash')
end

vim.api.nvim_set_keymap(
	'n',
	'<Leader>t',
	':lua OpenTerminal()<CR>',
	{
		noremap = true,
		silent = true,
	}
)

