syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

" noremap R "_dd
" nnoremap x "_x
" nnoremap d "_dd

" set tags=./php.tags,tags;$HOMe
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" set the runtime path to include Vundle and initialize
set rtp+=/home/brtsos/vim/bundle/Vundle.vim
"set rtp+=~/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Autocomplete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

set completeopt=longest,menuone

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

Bundle 'shawncplus/phpcomplete.vim'

Bundle 'joonty/vim-phpqa.git'
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 1

Plugin 'php.vim'

" Plugin 'ervandew/supertab'

" Templates
Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
colorscheme frontier-contrast

" Show line numbers
set number

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" auto (, { close
Plugin 'delimitMate.vim'

" Line wrap
set whichwrap+=<,>,h,l,[,]

" files tree
Plugin 'scrooloose/nerdTree'
map <C-n> :NERDTreeToggle<CR>
nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
let NERDTreeQuitOnOpen=1

map <A-PageUp> gT 
map <A-PageDown> gt 

" Thd following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
