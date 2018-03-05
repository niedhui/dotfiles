if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
if has("gui_vimr")
  " Command-Shift-F on OSX
  map <D-F> :Ack<space>
endif

