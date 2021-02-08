set background=dark
set guifont=FiraCode\ Nerd\ Font:h10

set encoding=UTF-8

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamed

set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set termguicolors

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8

set signcolumn=yes
set colorcolumn=80

set ignorecase

" Make sure Vim-Plug is downloaded and installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme gruvbox

" Key Remappings
" Change leader
let mapleader = " "
" Remap semi-colon to colon
nnoremap ; :
"Edit .vimrc
nnoremap <leader>ev :split ~/.vimrc<cr>
" Source vimrc
nnoremap <leader>sv :source ~/.vimrc<cr>
" Strong h and l
nnoremap H 0
vnoremap H 0
nnoremap L $
vnoremap L $
" Save and quit
nnoremap zz :wq<cr>
" Change tabs
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>

" Surround selection
" Single-quotes
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>el
" Double-quotes
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>el
" Curly braces
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>`>el
" Square brackets
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>`>el
" HTML brackets
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>`>el
" Backticks
vnoremap <leader>` <esc>`>a`<esc>`<i`<esc>`>el

" Comment line(s) in JS/TS/GO
autocmd FileType javascript nnoremap <leader>/ 0i//<tab><esc>w
autocmd FileType typescript nnoremap <leader>/ 0i//<tab><esc>w
autocmd FileType go nnoremap <leader>/ 0i//<tab><esc>w

" Move current line
nnoremap <C-j> ddp
nnoremap <C-k> ddk<S-p>
" Dupe current line
nnoremap <S-j> yyp
nnoremap <S-k> yy<S-p>

" Move current selection
vnoremap <C-j> d`]pV`]
vnoremap <C-k> dkP`[V`]
" Dupe current selection
vnoremap <S-j> y`]pV`]
vnoremap <S-k> y`[P`[V`]

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup REMOVE_WHITESPACE_ON_SAVE
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" FZF call
nnoremap <leader>n :FZF<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>f :CocCommand prettier.formatFile<CR>

" Snippets
augroup cdi_snippet
    autocmd!
    autocmd FileType typescript iabbrev cdi console.dir()<left>
    autocmd FileType javascript iabbrev cdi console.dir()<left>
augroup END

" Force hjkl movement
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>

" Remove PgUp and Dn
nnoremap <PageUp> <nop>
nnoremap <PageDown> <nop>
