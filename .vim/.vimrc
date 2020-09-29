syntax on

" ------------------------------------ Plugins ------------------------------------ 
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
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-commentary'
    Plug 'racer-rust/vim-racer'
    Plug 'rust-lang/rust.vim'
    Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
    Plug 'c-brenn/phoenix.vim', { 'for': 'elixir' }
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'valloric/youcompleteme'

    " wiki and markdown tools
    Plug 'vimwiki/vimwiki'
    Plug 'suan/vim-instant-markdown', { 'do': 'npm install -g instant-markdown-d' }
call plug#end()

" ------------------------------------ Settings ------------------------------------ 
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
set cursorline

" ------------------------------------ Statusline ------------------------------------ 
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2 "always show status line

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#TabLineSel#
set statusline+=\ %M
set statusline+=\ %F
set statusline+=\ [%{&fileformat}\]
set statusline+=%= "Right side
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %c:%l


" ------------------------------------ Colorscheme ------------------------------------ 
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>hh :help<CR>
nnoremap <leader>bb :vnew<CR>
nnoremap <leader>nb :new<CR>
nnoremap <leader>fq :q<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>qq :qa<CR>

" file browse
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_banner=0

let g:airline_theme='molokai'

