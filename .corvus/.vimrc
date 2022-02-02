syntax on

" ------------------------------------ Plugins ------------------------------------ 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" ------------------------------------ Settings ------------------------------------ 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set cursorline
set autoread
set runtimepath+=/usr/local/opt/fzf
set errorformat+=%f

" Plugin Search: https://vimawesome.com/
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'elixir-editors/vim-elixir'
    Plug 'slashmili/alchemist.vim'
    Plug 'elmcast/elm-vim'
    Plug 'janko-m/vim-test'

    " File & Fuzzy Search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sharkdp/fd'

    " ctags
    Plug 'ludovicchabant/vim-gutentags'

    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'kwsp/halcyon-neovim'
    Plug 'marko-cerovac/material.nvim'
    Plug 'sainnhe/sonokai'
    Plug 'sainnhe/everforest'
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

    " CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

    " wiki and markdown tools
    Plug 'vimwiki/vimwiki'
    Plug 'suan/vim-instant-markdown', { 'do': 'npm install -g instant-markdown-d' }
call plug#end()

" ------------------------------------ Statusline ------------------------------------ 
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2 "always show status line

set statusline= "Left side
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#TabLineSel#
set statusline+=\ %M
set statusline+=\ %F
set statusline+=\ [%{&fileformat}\]
set statusline+=%= "Right side
set statusline+=%#CursorLineNr#
set statusline+=%{gutentags#statusline()}
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %c:%l


" ------------------------------------ Colorscheme ------------------------------------ 
set termguicolors
set background=dark

" -- Gruvbox
" colorscheme gruvbox


" -- Halcyon
" colorscheme halcyon


" -- Sonokai
"  options: default, atlantis, andromeda, shusia, maia
" let g:sonokai_style = 'maia'
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
" let g:sonokai_transparent_background = 1
" colorscheme sonokai


" -- Everforest
" options: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
let g:everforest_transparent_background = 0
colorscheme everforest


" -- Material
" options: darker, lighter, oceanic, palenight, deep ocean
" colorscheme material
" let g:material_style = 'lighter'


" -- Halcyon
" colorscheme spaceduck


if executable('rg')
   let g:rg_derive_root='true'
endif

let mapleader = " "
" Editor
nnoremap <silent><leader>sf :source %<CR>
nnoremap <silent><leader>fe :Explore<CR>
nnoremap <silent><leader>ff :Files<CR>
nnoremap <silent><leader>bb :Buffers<CR>
nnoremap <silent><leader>] :bnext<CR>
nnoremap <silent><leader>[ :bprevious<CR>
nnoremap <leader>bd :bp\|bd #<CR>
nnoremap <silent><leader>fq :q<CR>
nnoremap <silent><leader>fs :w<CR>
nnoremap <silent><leader>hs :History<CR>
nnoremap <silent><leader>qq :qa<CR>
nnoremap <silent><leader>wd :close<CR>
nnoremap <silent><leader>wK :sbn<CR>
nnoremap <silent><leader>wJ :sbprevious<CR>
nnoremap <silent><leader>wL :vert sbn<CR>
nnoremap <silent><leader>wl <c-w>l
nnoremap <silent><leader>wh <c-w>h
nnoremap <silent><leader>wk <c-w>k
nnoremap <silent><leader>wj <c-w>j

nnoremap <silent><C-j> <cmd>:resize +5<CR>
nnoremap <silent><C-k> <cmd>:resize -5<CR>
nnoremap <silent><C-h> <cmd>:vertical resize +5<CR>
nnoremap <silent><C-l> <cmd>:vertical resize -5<CR>
nnoremap <silent><C-g> :Rg<CR>

" Tab Navigation
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap tt <c-w>T
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap te  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" System Info
nnoremap .d :echo system("date")<CR>


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

" gutentags
" let g:gutentags_trace = 1 "debugging
let g:gutentags_ctags_exclude = [
    \ '.backups/*',
    \ 'Library/*'
\]

" file browse
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_banner=0

