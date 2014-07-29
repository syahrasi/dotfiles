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
Bundle 'briancollins/vim-jst'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'groenewege/vim-less'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'bbommarito/vim-slim'
Bundle 'wavded/vim-stylus'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'zeis/vim-kolor'
Bundle 'suan/vim-instant-markdown'
Bundle '2072/PHP-Indenting-for-VIm.git'
Bundle 'StanAngeloff/php.vim'
Bundle 'xsbeats/vim-blade'
Bundle 'robmiller/vim-movar'
Bundle 'SirVer/ultisnips'
Bundle 'bitc/vim-bad-whitespace'
Bundle 'airblade/vim-gitgutter'
Bundle 'hlissner/vim-multiedit'
Bundle 'beyondwords/vim-twig'
Bundle 'marijnh/tern_for_vim'
Bundle 'jtmkrueger/vim-c-cr'
Bundle 'elixir-lang/vim-elixir'
Bundle 'bling/vim-airline'
Bundle 'Zuckonit/vim-airline-todo'
Bundle 'maxmeyer/vim-taskjuggler'
Bundle 'Yggdroot/indentLine'
Bundle 'myusuf3/numbers.vim'
Bundle 'vim-scripts/visual-increment'
Bundle 'matze/vim-move'
Bundle 'mattn/emmet-vim'
Bundle 'elzr/vim-json'
Bundle 'nono/vim-handlebars'
Bundle 'vim-ruby/vim-ruby'
Bundle 'hwartig/vim-seeing-is-believing'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'dahu/LearnVim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'goldfeld/vim-seek'
Bundle 'justinmk/vim-gtfo'
Bundle '29decibel/vim-stringify'
Bundle 'gcmt/wildfire.vim'
Bundle 'terryma/vim-expand-region'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'honza/vim-snippets'
" Bundle 'm2mdas/phpcomplete-extended'
" Bundle 'm2mdas/phpcomplete-extended-laravel'

" 'jeffkreeftmeijer/vim-numbertoggle'
" 'maciakl/vim-neatstatus'
Bundle 'DataWraith/auto_mkdir'

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
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-vinegar'

filetype plugin indent on

let mapleader = ","

set formatoptions=t
set formatoptions+=a
" set textwidth=72

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

" Underscores denote words
set iskeyword-=_

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <space>p :CtrlP .<CR>

"set wrap
map <Leader>w :set wrap!<CR>
"show hidden character
map <Leader>l :set list!<CR>
"source .vimrc on write
" autocmd bufwritepost .vimrc source $MYVIMRC
nnoremap <leader>s :source $MYVIMRC<CR>
"edit .vimrc
nmap <Leader>e :e $MYVIMRC<CR>
"change directory to current file's directory
nmap <Leader>cd :cd %:p:h<CR>

nmap <Leader>x :Explore<CR>

"Invisible character colors
highlight NonText guifg=#465457
highlight SpecialKey guifg=#465457

" Maps for <esc>
ino jk <esc>
cno jk <c-c>

" " Bubble single lines
" nmap <C-Up> [e
" nmap <C-Down> ]e
" " Bubble multiple lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv

let g:move_key_modifier = 'C'

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

" add syntax hilite support for non standard php files
autocmd BufNewFile,BufRead *.tpl set syntax=php
autocmd BufNewFile,BufRead *.inc set syntax=php

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
let g:UltiSnipsSnippetDirectories=["bundle/vim-snippets/UltiSnips", "sy-snippets", "angular-vim-snippets/UltiSnips"]

" Enable tern shortcut
let g:tern_map_keys=1

set omnifunc=syntaxcomplete#Complete
" set omnifunc=phpcomplete#CompletePHP

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set ft=php.laravel
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Navigate betweeen splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Keep airline status
set laststatus=2

" Numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Seeing Is Believing
" Gvim
nmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
xmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
imap <buffer> <M-r> <Plug>(seeing-is-believing-run)

nmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
xmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
imap <buffer> <M-m> <Plug>(seeing-is-believing-mark)

" Terminal
nmap <buffer> <F6> <Plug>(seeing-is-believing-run)
xmap <buffer> <F6> <Plug>(seeing-is-believing-run)
imap <buffer> <F6> <Plug>(seeing-is-believing-run)

nmap <buffer> <F5> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F5> <Plug>(seeing-is-believing-mark)
imap <buffer> <F5> <Plug>(seeing-is-believing-mark)

"ejs html binding
au BufNewFile,BufRead *.ejs set filetype=html

" Stringify
map <leader>g :call Stringify()<CR>


" Disable tab for youcompleteme
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

let g:user_emmet_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\}
