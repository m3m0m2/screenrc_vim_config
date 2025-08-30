set nocompatible              " be iMproved, required

filetype off                  " required

call plug#begin('~/.vim/plugged')
" Old plugins earlier in Vundle
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'sotte/presenting.vim'
" NerdTree
Plug 'preservim/nerdtree'
" You Complete Me, replaced by coc
"Plug 'Valloric/YouCompleteMe'
" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
" End of old plugins

" coc code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" fzf: Files, GFiles (git), Buffers, Rg, Lines, BLines, History, BCommits
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
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

packadd! matchit

set number
"set background=dark
"colorscheme elflord

set wildmenu
set wildmode=list:longest,full
" Use 4 spaces by default for each tab
set tabstop=4 shiftwidth=4 expandtab
" Use only 2 spaces for javascript files
autocmd BufRead,BufNewFile   *.ts,*.js,*.tsx,*.jsx setlocal tabstop=2 shiftwidth=2 expandtab
" Using instead 4 spaces for C++, autocmd BufRead,BufNewFile   *.c,*.cpp,*.h,*.hpp setlocal tabstop=2 shiftwidth=2 expandtab
" In C++ use clang-format with gq
autocmd BufRead,BufNewFile   *.c,*.cpp,*.cc,*.h,*.hpp,*.hh setlocal formatprg=clang-format
set history=300

" folding zo/c zO/C zM/R
"set fdm=indent
"
"set thesaurus+=/home/mauro/.vim/mthesaur.txt

" avoid ^M at end of line, vim assumes format=dos
set fileformat=unix

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'ruby\|perl'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()
"autocmd BufWritePre * :%s/\s\+$//e

" old vim warning
let g:coc_disable_startup_warning = 1
" coc mapping
runtime coc.vim

"if has("autocmd")
"    autocmd FileType java  setlocal makeprg=mvn
"endif

set langmap=ё`,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж#,э',яz,чx,сc,мv,иb,тn,ьm,б#,ю.,Ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х[,Ъ],ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж#,Э',ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б#,Ю.
