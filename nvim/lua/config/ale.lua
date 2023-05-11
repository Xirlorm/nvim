local g = vim.g

g.ale_sign_error = ' ✖'    -- ' ✗'
g.ale_sign_warning = ' '  -- ' ⚠'
g.ale_sign_info = ' ℹ'
g.ale_sign_style_error = ' ✖'
g.ale_sign_style_warning = ' '
g.ale_completion_enabled = 1
g.ale_completion_autoimport = 1
g.ale_lint_on_save = 1
g.ale_lint_on_insert_leave = 1
-- g.ale_lint_on_text_changed = 'never'
g.ale_completion_enabled = 1
g.ale_completion_delay = 200
g.ale_completion_max_suggestions = 20
g.ale_linters = {
	python =  {'flake8', 'pylint'},
	c = {'gcc', 'clang-tidy'},
	javascript = {'eslint'},
	cpp = {'g++', 'clang-tidy', 'cppcheck'},
	rust = {'cargo', 'rustc', 'rls'},
}

vim.cmd([[
	let g:ale_fixers = {
		\'*': ['remove_trailing_lines', 'trim_whitespace'],
		\'javascript': ['eslint', 'prettier'],
		\'typescript': ['eslint','tslint', 'xo'],
		\'css': ['stylelint', 'fecs', 'prettier'],
		\'rust': ['rustfmt', 'rls'],
		\'python': ['autopep8'],
		\'cpp': ['clang-format'],
		\'c': ['clang-format']
		\}
	" Set completion source
	let g:ale_completion_sources = {
		\'nvimcmp': ['buffer', 'path', 'tags']
		\}
	" Ale completion
	" set omnifunc = 'ale#completion#OmniFunc'

	" Show ALE diagnostics in the sign column
	inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

	" Go to next error
	nmap <silent> <C-i> <Plug>(ale_next_wrap)
]])
