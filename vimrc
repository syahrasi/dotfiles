set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Valloric/MatchTagAlways'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'walm/jshint.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'groenewege/vim-less'
Plugin 'ecomba/vim-ruby-refactoring'
" Plugin 'bbommarito/vim-slim'
Plugin 'wavded/vim-stylus'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'zeis/vim-kolor'
Plugin 'suan/vim-instant-markdown'
Plugin '2072/PHP-Indenting-for-VIm.git'
Plugin 'StanAngeloff/php.vim'
Plugin 'xsbeats/vim-blade'
Plugin 'robmiller/vim-movar'
Plugin 'SirVer/ultisnips'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'hlissner/vim-multiedit'
Plugin 'beyondwords/vim-twig'
Plugin 'marijnh/tern_for_vim'
Plugin 'jtmkrueger/vim-c-cr'
Plugin 'elixir-lang/vim-elixir'
Plugin 'bling/vim-airline'
Plugin 'Zuckonit/vim-airline-todo'
Plugin 'maxmeyer/vim-taskjuggler'
Plugin 'Yggdroot/indentLine'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-scripts/visual-increment'
Plugin 'matze/vim-move'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
Plugin 'nono/vim-handlebars'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hwartig/vim-seeing-is-believing'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'dahu/LearnVim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'goldfeld/vim-seek'
Plugin 'justinmk/vim-gtfo'
Plugin '29decibel/vim-stringify'
Plugin 'gcmt/wildfire.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'honza/vim-snippets'
Plugin 'greyblake/vim-preview'
" Plugin 'm2mdas/phpcomplete-extended'
" Plugin 'm2mdas/phpcomplete-extended-laravel'

" 'jeffkreeftmeijer/vim-numbertoggle'
" 'maciakl/vim-neatstatus'
Plugin 'DataWraith/auto_mkdir'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
" Plugin 'tobyS/skeletons.vim'
" Plugin 'stephpy/vim-php-cs-fixer'
" Plugin 'pgilad/vim-skeletons'
Plugin 'majutsushi/tagbar'
Plugin 'craigemery/vim-autotag'
" Plugin 'vivkin/flatland.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'shime/vim-livedown'
Plugin 'trusktr/seti.vim'


"tpope
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-vinegar'

call vundle#end()
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
nnoremap <space>t :CtrlPBufTagAll<CR>

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

set shell=$SHELL

"pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <C-D> :call pdv#DocumentWithSnip()<CR>
nmap <Leader>d :call pdv#DocumentWithSnip()<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

nmap <Leader>m :PreviewMarkdown<CR>

nmap <Leader>t :!clear && phpunit<CR>
nmap <Leader>t5 :!clear && phpunit %<CR>

" incremental search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337
