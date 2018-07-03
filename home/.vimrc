" load plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

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
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

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
