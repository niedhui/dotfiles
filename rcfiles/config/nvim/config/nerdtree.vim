let NERDTreeHijackNetrw = 0

map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

