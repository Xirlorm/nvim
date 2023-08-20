vim.cmd([[
	autocmd BufNewFile,BufRead *.rs set filetype=rust

	let g:ale_sign_error = ' ✖'    -- ' ✗'
	let g:ale_sign_warning = ' '  -- ' ⚠'
	let g:ale_sign_info = ' ℹ'
	let g:ale_sign_style_error = ' ✖'
	let g:ale_sign_style_warning = ' '
	let g:ale_completion_enabled = 1
	let g:ale_completion_autoimport = 1
	let g:ale_lint_on_save = 1
	let g:ale_lint_on_insert_leave = 1
	" let g:ale_lint_on_text_changed = 'never'
	let g:ale_completion_enabled = 1
	let g:ale_completion_max_suggestions = 20
	" let g:ale_disable_lsp = 1

	let g:ale_linters = {
		\'c': ['clang-tidy'],
		\'cpp': ['clang-tidy', 'cppcheck'],
		\'rust': ['analyzer', 'cargo'],
		\'javascript':  ['eslint'],
		\'typescript': ['tslint', 'eslint'],
		\'python': ['flake8', 'pylint'],
		\}

	let g:ale_fixers = {
		\'c': ['clang-format'],
		\'cpp': ['clang-format'],
		\'rust': ['rustfmt'],
		\'javascript': ['eslint', 'prettier'],
		\'typescript': ['eslint','tslint', 'xo'],
		\'css': ['prettier', 'fecs', 'stylelint'],
		\'python': ['autopep8'],
		\'*': ['remove_trailing_lines', 'trim_whitespace'],
		\}

	" Ale completion
	" set omnifunc=ale#completion#OmniFunc

	" Go to next error
	nmap <silent> <C-i> <Plug>(ale_next_wrap)
]])
