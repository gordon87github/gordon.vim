"设置插件NERDTree的个性化配置
function! gordon#SettingNerdTree()
	nnoremap + :call ChangeWinwidth(1)<CR>
	nnoremap - :call ChangeWinwidth(0)<CR>
	map <c-n> :NERDTreeToggle<cr>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endfunction

"设置ultisnips 的个性化配置
function! gordon#SettingUltisnips()
	"触发ultisnips
	let g:UltiSnipsExpandTrigger="<leader><leader>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	let g:UltiSnipsEditSplit="vertical"
endfunction
function! ChangeWinwidth(flag)
	if a:flag
		let ww=winwidth(1)+1
	else
		let ww=winwidth(1)-1
	endif
	execute "normal " . ww . "\<C-W>|"
endfunction

