syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set noshowmode

set colorcolumn=160
highlight ColorColumn ctermbg=0 guibg=lightgrey

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Plugin Search: https://vimawesome.com/
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-utils/vim-man'
    Plug 'w0rp/ale'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-commentary'
    Plug 'racer-rust/vim-racer'
    Plug 'rust-lang/rust.vim'
    Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
    Plug 'c-brenn/phoenix.vim', { 'for': 'elixir' }
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " wiki and markdown tools
    Plug 'vimwiki/vimwiki'
    Plug 'suan/vim-instant-markdown', { 'do': 'npm install -g instant-markdown-d' }
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

" file browse
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_banner=0

let g:lightline = { 'colorscheme': 'wombat', }

