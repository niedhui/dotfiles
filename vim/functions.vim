" Mapping function. inspired from janus#add_mapping
"
" @param [String] The mapping command (map, vmap, nmap or imap)
" @param [String] The mapping keys
" @param [String]* The mapping action
function! nie:add_mapping(mapping_command, mapping_keys, ...)
  if len(a:000) < 1
    throw "The arguments to janus#add_mapping() should be <mapping_command> <mapping_keys> <mapping_action> [mapping_action]*"
  endif

  let mapping_command = join(a:000)

  let mapping_list = [a:mapping_command, a:mapping_keys, mapping_command]
  exe join(mapping_list)
endfunction

