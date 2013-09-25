if has("gui_macvim") && has("gui_running")
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <ESC><plug>NERDCommenterToggle<CR>i
else
  map <leader>/ <plug>NERDCommenterToggle<CR>
endif
