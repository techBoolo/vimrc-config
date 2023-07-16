set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'mas9612/md2tex.vim'
  Plugin 'diepm/vim-rest-console'
  Plugin 'loremipsum'
  Plugin 'honza/vim-snippets'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'lepture/vim-css'
call vundle#end()

let g:snipMate = { 'snippet_version' : 1 }

if has('autocmd')
	filetype indent plugin on
endif

" enable mouse
set mouse=a

" turn on syntax highlighting
syntax enable

" show line number
set number

" show file stats
set ruler

" Encoding
set encoding=utf-8

" whitespace
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" cursor motion
set scrolloff=3

" Searching
set hlsearch
set showmatch
set incsearch
set ignorecase
set smartcase

" color scheme
set background=light
colorscheme default

" highlight cursor line
set cursorline
set cursorcolumn
" instead we might choose to show only in active window
augroup cursor_off
  autocmd!
  autocmd WinLeave * set nocursorline nocursorcolumn
  autocmd WinEnter * set cursorline cursorcolumn
augroup END

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" space bar to type the : character
nnoremap <space> :

" navigate the split window easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

autocmd VimEnter * NERDTree

" map the esc key:
imap <F1> <esc>
inoremap jj <esc>
