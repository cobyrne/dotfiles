"Settings
set nocompatible
filetype plugin indent on
set hidden "buffers (and their history) are preserved when opening a new buffer
           " eg if you have unsaved changes you can still :e newfile
call pathogen#helptags()  "enable pathogen
call pathogen#infect()
"set undofile "undo history now spans multiple editing sessions

" Display
set showcmd
syntax enable
set number
set ruler
set scrolloff=3
set title
set visualbell
set background=dark
let g:solarized_termcolors=16
colorscheme solarized
if exists('+colorcolumn')
    set colorcolumn=80  "highlight col 80
endif
set showmatch "show matching parens
set cursorline "highlight current line

" Status line
set laststatus=2  "always show status line
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=[%n%H%R%W]\               " flags and buf no
set statusline+=[%{strlen(&ft)?&ft:'none'}, "file type
set statusline+=%{&fenc},                 " file encoding
set statusline+=%{&fileformat}]           " file format
set statusline+=%m\                       " modified flag
set statusline+=%-5.40f\                  " file name
set statusline+=%=                        " separator
set statusline+=%10{v:register}\            " wtf is this?
set statusline+=%((%2l,%2c)%)\            " line and column
set statusline+=%P                        " percentage of file

" Mouse
set mouse=a "in xterm, enable mouse

" Backups
set backup
set backupdir=~/.vimbackup
"set patchmode=.orig
"
" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
"set si "smart indent (might interfere with filetype indenting?)

" Search
set incsearch
set ignorecase
set smartcase
set foldenable
set wildmenu
set wildmode=list:longest

" History
set history=100

"Bindings
" local leader
let mapleader=','
" ; instead of :
nnoremap ; :
" movement
nnoremap j gj
nnoremap k gk
" windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Buffers
nnoremap <silent> <Leader>n :bn<cr>
nnoremap <silent> <Leader>N :bp<cr>
nnoremap <Leader><Leader> <C-^>
" Folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf
let javaScript_fold=1
" format
vnoremap Q gq
nnoremap Q gqap

"Plugins
" SnipMate
let g:snips_author="Colin O'Byrne"
" Command-T
let g:CommandTAcceptSelectionSplitMap=['<C-g>','<C-<cr>>']
let g:CommandTMatchWindowReverse=1

