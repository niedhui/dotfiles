if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
if has("gui_vimr")
  " Command-Shift-F on OSX
  map <D-F> :Ack<space>
endif

