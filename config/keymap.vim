inoremap jk <esc>
nnoremap <M-q> <esc>:close<cr>
vnoremap <M-q> <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr> " 取消搜索高亮

" 窗口
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
noremap <M-H> <C-w>h
noremap <M-J> <C-w>j
noremap <M-K> <C-w>k
noremap <M-L> <C-w>l

" 更改窗口大小
nnoremap <M-{> :vertical resize -5<CR> " 更改窗口宽度
nnoremap <M-}> :vertical resize +5<CR>
" nnoremap <M-_>= :exe "resize " . (winheight(0) * 3/2)<CR> " 更改窗口高度
" nnoremap <M-+>- :exe "resize " . (winheight(0) * 2/3)<CR>

" 分割窗口
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>

" 插入模式下的一些快捷键
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O
inoremap <M-h> <esc>I
inoremap <M-l> <esc>A

noremap <space><space> <esc>:w<cr>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" 复制到末尾
nnoremap Y y$

" terminal
if has('nvim')
	au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
else
	tnoremap <Esc> <C-\><C-n>
endif

tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
tnoremap <c-h> <c-\><c-n><c-w>h

function s:new_tab_before() abort
	exec "tabnew | -tabmove"
endfunction
" 在前面新建一个tab
nnoremap <silent> <leader>tN :call <SID>new_tab_before()<cr>
" 在后面新建一个tab
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
" nnoremap  <leader>tm :tabmove 1<cr>
" nnoremap  <leader>tM :tabmove -1<cr>
