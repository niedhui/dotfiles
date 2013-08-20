"vimbefore
source ~/.vim/functions.vim
let mapleader = ","

" vundle start
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" tools
Bundle 'tpope/vim-rails'
Bundle 'slim-template/vim-slim'

" langs
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'niedhui/vim-snippets'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on

" vundle end
"
" load config for bundles
for f in split(glob('~/.vim/bundle_config/*.vim'), '\n')
  exe 'source' f
endfor

"" vimwiki
"let g:vimwiki_ext2syntax = {}


set gfn=Menlo\ Regular:h14

"" vimafter

"" color will be able after the install
color solarized

"syntax on
autocmd BufWritePost *.go :silent Fmt
autocmd BufWritePre * :%s/\s\+$//e
