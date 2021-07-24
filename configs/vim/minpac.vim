function! PackInit() abort
	packadd minpac
	call minpac#init()
	call minpac#add('k-takata/minpac', {'type': 'opt'})
	call minpac#add('junegunn/vim-easy-align')
	call minpac#add('junegunn/fzf')
	call minpac#add('junegunn/fzf.vim')
	call minpac#add('scrooloose/nerdtree')
	call minpac#add('scrooloose/nerdcommenter')
	call minpac#add('airblade/vim-rooter')
	call minpac#add('dag/vim-fish', {'type': 'opt'})
  call minpac#add('mileszs/ack.vim')
  call minpac#add('rust-lang/rust.vim')
"  call minpac#add('vim-syntastic/syntastic')
  call minpac#add('tomlion/vim-solidity')
" call minpac#add('leafgarland/typescript-vim')
" call minpac#add('peitalin/vim-jsx-typescript')

  call minpac#add('neovim/nvim-lspconfig')
  call minpac#add('hrsh7th/nvim-compe')
  call minpac#add('L3MON4D3/LuaSnip')
  call minpac#add('windwp/nvim-autopairs')

endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()
