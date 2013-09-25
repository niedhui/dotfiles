"vimbefore
source ~/.vim/functions.vim
let mapleader = ","

" vundle start
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" langs
Bundle 'tpope/vim-rails'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-ruby/vim-ruby'

Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'

" snip related
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'niedhui/vim-snippets'
Bundle 'ervandew/supertab'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

Bundle 'terryma/vim-multiple-cursors'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'michaeljsmith/vim-indent-object'

Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'

" color scheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'mitsuhiko/fruity-vim-colorscheme'

filetype plugin indent on

" vundle end
"
" load config for bundles
for f in split(glob('~/.vim/bundle_config/*.vim'), '\n')
  exe 'source' f
endfor

"" vimwiki
"let g:vimwiki_ext2syntax = {}


set gfn=Anonymous\ Pro:h16

"" vimafter

"syntax on
autocmd BufWritePost *.go :silent Fmt
autocmd BufWritePre * :%s/\s\+$//e
