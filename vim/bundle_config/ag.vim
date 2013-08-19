if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  call nie:add_mapping('map', '<D-F>', ':Ag<space>')
else
  " Define <C-F> to a dummy value to see if it would set <C-f> as well.
  map <C-F> :dummy

  if maparg("<C-f>") == ":dummy"
    " <leader>f on systems where <C-f> == <C-F>
    call nie:add_mapping('map', '<leader>f', ':Ag<space>')
  else
    " <C-F> if we can still map <C-f> to <S-Down>
    call nie:add_mapping('map', '<C-F>', ':Ag<space>')
  endif

  map <C-f> <S-Down>
endif

