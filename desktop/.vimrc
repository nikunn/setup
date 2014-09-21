set nocompatible

"""""""""""""""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""""""""""""
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" pathogen
execute pathogen#infect()

" start nerd tree if no file selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""" SYNTAX """"""""""""""""""""""""""""""""""""
syntax on
filetype on
filetype plugin on

"""""""""""""""""""""""""""""""""" COMPLETION """"""""""""""""""""""""""""""""""
set nocp
set wildmenu
set wildmode=list:longest,full
set completeopt-=preview

"YCM
let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_auto_trigger = 0
"let g:ycm_global_ycm_extra_conf = '/home/zubilion/Source/Project/.ycm_extra_conf.pyc'
let g:ycm_filetype_whitelist = { 'cpp': 1, 'h': 1, 'hpp': 1 }
let g:ycm_confirm_extra_conf = 0

" few remap for YCM
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F1> :YcmCompleter GoToDefinition<CR>
nnoremap <F2> :YcmCompleter GoToDeclaration<CR>
nnoremap <F3> :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

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
