syntax on

" ------------------------------------ Plugins ------------------------------------ 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Plugin Search: https://vimawesome.com/
call plug#begin('~/.vim/plugged')
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sharkdp/fd'
    Plug 'elixir-editors/vim-elixir'
    Plug 'slashmili/alchemist.vim'
    Plug 'elmcast/elm-vim'
    Plug 'janko-m/vim-test'

    " Themes
    Plug 'morhetz/gruvbox'

    " CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

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
set autoread

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
set termguicolors
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
" Editor
nnoremap <silent><leader>ff :Files<CR>
nnoremap <silent><leader>bb :Buffers<CR>
nnoremap <silent><leader>] :bnext<CR>
nnoremap <silent><leader>[ :bprevious<CR>
nnoremap <leader>bd :bp\|bd #<CR>
nnoremap <leader>fq :q<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>qq :qa<CR>
nnoremap <leader>wd :close<CR>
nnoremap <leader>wK :new<CR>
nnoremap <leader>wJ :sbprevious<CR>
nnoremap <leader>wL :vert sbn<CR>
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wk <c-w>k
nnoremap <leader>wj <c-w>j

" Git
nnoremap <silent><leader>gb :Git blame<CR>

" Language
nnoremap <leader>ef :ElmFormat<CR>

" Test
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>l :TestLast<CR>

" coc completion navigation
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" file browse
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_banner=0

