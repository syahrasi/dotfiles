set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" if has("autocmd")
"   " Enable filetype detection
"   filetype plugin indent on
"
"   " Restore cursor position
"   autocmd BufReadPost *
"     \ if line("'\"") > 1 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif
" endif

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Valloric/MatchTagAlways'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'walm/jshint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'
Bundle 'tomtom/tcomment_vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'groenewege/vim-less'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'bbommarito/vim-slim'
Bundle 'wavded/vim-stylus'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'zeis/vim-kolor'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'suan/vim-instant-markdown'
Bundle '2072/PHP-Indenting-for-VIm.git'
Bundle 'robmiller/vim-movar'
Bundle 'SirVer/ultisnips'
Bundle 'bitc/vim-bad-whitespace'
"tpope
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
"vim.org

filetype plugin indent on

let mapleader = ","

set formatoptions=t
set formatoptions+=a
set textwidth=72

set nobackup
set noswapfile
set nocompatible

set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set showmatch
set showmode
set ignorecase smartcase
set hidden

set autoread
set cpoptions+=$
set ch=2

set mousehide

set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

set ignorecase
set hlsearch
set incsearch
set virtualedit=all
set ruler
set cursorline
set cursorcolumn
set number
set wildmenu
set wildmode=list:longest
set splitright splitbelow

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"set wrap
map <Leader>w :set wrap!<CR>
"show hidden character
map <Leader>l :set list!<CR>
"source .vimrc on write
" autocmd bufwritepost .vimrc source $MYVIMRC
"edit .vimrc
nmap <Leader>e :e $MYVIMRC<CR>
"change directory to current file's directory
nmap <Leader>cd :cd %:p:h<CR>

"Invisible character colors
highlight NonText guifg=#465457
highlight SpecialKey guifg=#465457

" Maps for <esc>
ino jj <esc>
cno jj <c-c>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" shortcuts for copying to clipboard
nmap <leader>y "+y

" shortcuts for pasting from clipboard
nmap <leader>p "+p

" clear hilite
nmap <silent> <C-N> :silent noh<CR>

" map : to <space>
nmap <space> :

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" set font
set guifont=Meslo\ LG\ L\ 12

" mapping for tcomment
map <leader>cc <c-_><c-_>
map <leader><space> <c-_><space>
map <leader>cb <c-_>b
map <leader>ca <c-_>a
map <leader>cn <c-_>n
" map <leader>cs <c-_>s
" map <leader>ci <c-_>i
map <leader>cr <c-_>r
map <leader>cp <c-_>p

" gist-vim
let g:gist_private = 1
let g:gist_get_multiplefile = 1

" Buffer Explorer settings
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitRight=0

"Invisible character colors
highlight NonText guifg=#465457
highlight SpecialKey guifg=#465457

" window resizing
map <silent> <C-h> <C-w><
map <silent> <C-j> <C-W>-
map <silent> <C-k> <C-W>+
map <silent> <C-l> <C-w>>

syntax enable
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
colorscheme solarized

" add syntax hilite support for non standard ruby files
autocmd BufNewFile,BufRead *.thor set syntax=ruby
autocmd BufNewFile,BufRead Guardfile set syntax=ruby

"fix backspace
set backspace=2
set backspace=indent,eol,start

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'liquid' : 1,
    \}

let g:instant_markdown_slow = 1

" UltiSnips snippet dirs
let g:UltiSnipsSnippetDirectories=["UltiSnips", "sy-snippets"]
