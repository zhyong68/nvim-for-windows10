function! s:patch_lucius_colors()
    if has('termguicolors')
        set termguicolors
    endif
    hi Normal     ctermbg=NONE guibg=NONE
    hi LineNr     ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    "set background=light
    " coc多光标颜色
    hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
    " coc yank背景颜色
    hi HighlightedyankRegion term=bold ctermbg=0 guibg=purple

endfunction

autocmd! colorscheme ayu call s:patch_lucius_colors()
"colorscheme kuroi
colorscheme ayu

"------------------------------------------------------"
" 设置vim搜索匹配项的颜色
hi Search cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi IncSearch cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi QuickFixLine cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE

"------------------------statusline----------------------"
"
"if !HasPlug('vim-airline') && !HasPlug('powerline') && !HasPlug('eleline.vim')
"    set statusline=%F%m%r%h%w%=\ ->花无重开日，人无再少年<-\ [ft:%Y]\ %{\"[fenc:\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [ff:%{&ff}]\ [asc:%03.3b]\ [hex:%02.2B]\ [(%l,%v)/%L][%p%%]\ [coc:%{coc#status()}]
"    set statusline+=[git:%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}]
"    "set statusline^=%{FugitiveStatusline()}
"    set laststatus=2
"endif
