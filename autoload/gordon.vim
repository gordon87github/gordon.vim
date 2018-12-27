"设置插件NERDTree的个性化配置
function! gordon#SettingNerdTree()
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
