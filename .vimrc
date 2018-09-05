set number
set ai
set shiftwidth=4
set tabstop=4
set ruler
syntax on
set title
set fileencodings=utf-8
set autoindent
set laststatus=2
set autoread
set ttimeoutlen=50
set ignorecase
set incsearch
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'gmarik/Vundle.vim'

Plugin 'The-NERD-Tree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'nanotech/jellybeans.vim'
Plugin 'fatih/vim-go'
Plugin 'dracula/vim'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'moorereason/vim-markdownfmt'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let NERDTreeShowHidden=1
" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
set background=dark
nmap <silent> <C-D> :NERDTreeToggle<CR>
map <F1> :!bash<CR>
set expandtab
color dracula
let g:ycm_server_python_interpreter = '/usr/local/bin/python3.7'
let g:vim_markdown_folding_disabled = 1
let NERDTreeQuitOnOpen = 1
au VimEnter *  NERDTree
command W w
command Q q
command WQ wq
