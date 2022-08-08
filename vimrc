set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" wtf?
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'sotte/presenting.vim'

" NerdTree
Plugin 'preservim/nerdtree'

" You Complete Me
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required


call plug#begin('~/.vim/plugged')
" coc code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Smooth scroll down/up: Ctrl-d/u or Ctrl-f/b
"Plug 'psliwka/vim-smoothie'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" fzf: Files, GFiles (git), Buffers, Rg, Lines, BLines, History, BCommits
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
"let g:coc_disable_startup_warning = 1
map <F5> :NERDTreeToggle<CR>

filetype plugin indent on    " required
filetype plugin on

" enable syntax and plugins
syntax enable

" search in subolders providing tab completion
" :find *ile<TAB>
set path+=**


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
packadd! matchit

set number
"set background=dark
colorscheme elflord

set wildmenu
set wildmode=list:longest,full
set tabstop=4 shiftwidth=4 expandtab
set history=300

" folding zo/c zO/C zM/R
"set fdm=indent
"
"set thesaurus+=/home/mauro/.vim/mthesaur.txt

" avoid ^M at end of line, vim assumes format=dos
set fileformat=unix
autocmd BufWritePre * :%s/\s\+$//e

" coc mapping
runtime coc.vim

