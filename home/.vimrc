" load plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

set nocompatible		" be iMproved, required
filetype off			" required

filetype plugin indent on	" required
syntax on			" enable syntax highlighting

"
" Settings
"
set noerrorbells                " No beeps
set number                      " Show line numbers
set relativenumber		" Show line numbers relative to cursor position
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set clipboard=unnamed,unnamedplus       " Use X11 Clipboard
set nowrap			" Do not wrap long lines
set colorcolumn=80              " Set a vertical lign at width=80

" tab configuration
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set foldmethod=indent

set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2

set ruler                       " Show the cursor position all the time

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set noshowmatch                 " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast

" speed up syntax highlighting
set nocursorcolumn
set nocursorline


"
" Key Mappings
"
nnoremap <Space> :nohl<CR>
inoremap <S-Tab> <C-d>
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
inoremap jj <Esc>

"
" Syntastic Config
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm-do eslint'

