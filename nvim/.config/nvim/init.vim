" load plugins
call plug#begin(stdpath('data') . '/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

set nocompatible  " be iMproved, required
filetype off      " required

filetype plugin indent on " required
syntax on                 " enable syntax highlighting

"
" base settings
"
set noerrorbells                  " No beeps
set number                        " Show line numbers
set relativenumber                " Show line numbers relative to cursor position
set backspace=indent,eol,start    " Makes backspace key more powerful.
set showcmd                       " Show me what I'm typing
set showmode                      " Show current mode.
set clipboard=unnamedplus         " Use X11 Clipboard
set nowrap                        " Do not wrap long lines
set autoread                      " Automatically reread changed files without asking me anything
set fileformats=unix,dos,mac      " Prefer Unix over Windows over OS 9 formats
set laststatus=2                  " Controls whether to show the bottom status line
set showtabline=2                 " Always shows tab line independent of having more than one
set ttyfast                       " Improves performance of redrawing by signalizing a fast terminal connection
set wildmenu                      " Show a menu for tab completion

"
" formatting settings
"
set listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
" set listchars+=eol:¬,space:·
set list

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v') " Hightlight character at column 81

set encoding=utf-8                " Set default encoding to UTF-8

"
" split settings
"
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows

"
" tab settings
"
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set foldmethod=indent

"
" searching settings
"
set noshowmatch                 " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

"
" speed up syntax highlighting
"
set nocursorcolumn
set nocursorline

"
" key mappings
"
nnoremap <Space> :nohl<CR>
inoremap <S-Tab> <C-d>
nnoremap <C-Tab> gt
nnoremap <silent> <F5> :source ~/.vimrc<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
