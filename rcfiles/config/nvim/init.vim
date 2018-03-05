let mapleader = ","

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
call plug#end()

source ~/.config/nvim/config/vim.vim
source ~/.config/nvim/config/nerdtree.vim
source ~/.config/nvim/config/nerd_commenter.vim
source ~/.config/nvim/config/ack.vim
source ~/.config/nvim/config/fzf.vim
