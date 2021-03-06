set nocompatible

"""""""""""""""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""" SYNTAX """"""""""""""""""""""""""""""""""""
syntax on
filetype on
filetype plugin on
filetype plugin indent on

"""""""""""""""""""""""""""""""""" COMPLETION """"""""""""""""""""""""""""""""""
set nocp
set wildmenu
set wildmode=list:longest,full
set completeopt-=preview

"""""""""""""""""""""""""""""""""" INDENTATION """""""""""""""""""""""""""""""""
" indent 
set smarttab
set expandtab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2

"""""""""""""""""""""""""""""""""" INDENTATION """""""""""""""""""""""""""""""""
" show
set ruler
set showcmd
set showmode
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""" SEARCHING """"""""""""""""""""""""""""""""""
" search related
set hlsearch
set incsearch
set ignorecase smartcase

""""""""""""""""""""""""""""""""""" SHORTCUTS """"""""""""""""""""""""""""""""""
" redo
nmap , @:

" delete, change
nnoremap <S-W> wbcw
nnoremap <S-E> wbdw

" move, position
set scrolloff=3
set sidescrolloff=5
map <C-Down> 2<C-E>
map <C-Up> 2<C-Y>
nmap <C-Right> g,
nmap <C-Left> g;

" useful map
nnoremap <Space> *
nnoremap + <C-A>
nnoremap - <C-X>

" about split window
nmap <Tab> <C-W><C-W>
nmap <S-Tab> <C-W>W
nmap <A-PageUp> gT
nmap <A-PageDown> gt
nmap <A-Up> :vertical resize +2<CR>
nmap <A-Down> :vertical resize -2<CR>
nmap <A-Left> :resize -2<CR>
nmap <A-Right> :resize +2<CR>

""""""""""""""""""""""""""""""""""""" COLORS """""""""""""""""""""""""""""""""""
so ~/.vimcl

"""""""""""""""""""""""""""""""""""""" MISC """"""""""""""""""""""""""""""""""""
" vimdiff specific
if &diff
  "set diffopt+=iwhite "ignore white space
  colorscheme koehler
endif
