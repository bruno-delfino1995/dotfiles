set shell=/bin/sh

" Plugins {{{
call plug#begin(stdpath('data') . '/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree'

call plug#end()

filetype off              " do not load $runtime/filetype.vim files
filetype plugin indent on " auto load plugin filetypes and indent specs
syntax on                 " enable syntax highlighting

" }}}
" Base Settings {{{

set noerrorbells               " no beeps
set backspace=indent,eol,start " makes backspace key more powerful.
set clipboard=unnamedplus      " use X11 Clipboard
set autoread                   " automatically reread changed files without asking me anything
set fileformats=unix,dos,mac   " prefer Unix over Windows over OS 9 formats
set encoding=utf-8             " set default encoding to UTF-8
set ttyfast                    " improves performance of redrawing by signalizing a fast terminal connection
set wildmenu                   " show a menu for tab completion
set modeline                   " allow lines on extremities to contain vim config - `vim:foldmethod=marker:foldlevel=0`
set modelines=2                " amount of lines to check on extremities for modelines - 2 at least because of shebang
" set hidden                     " allow to change buffers without writing changes
set nojoinspaces               " prevents double spaces after punctuation when joining with `J`
set linebreak                  " makes vim break line only on whitespaces
set autoindent                 " start next line at same level as current
set smartindent                " guess the next indenting and start the line correctly
set sessionoptions=blank,curdir,folds,help,tabpages,winsize " what to persist on :mksession

" Backups {{{

set backup         " write backup for current buffer
set writebackup    " write backups befory overwriting the actual file
set updatetime=300 " lower value for swap write wait threshold
set undofile       " allow undos even after file has been closed and reopened
set backupdir=/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*

" }}}
" }}}
" Cursor Configuration {{{

let &t_SI = "\<Esc>[6 q" " pipe on insert
let &t_SR = "\<Esc>[4 q" " underscore on replace
let &t_EI = "\<Esc>[2 q" " block on everything else

" }}}
" Rendering Settings {{{

set number                                               " show line numbers
set relativenumber                                       " show line numbers relative to cursor position
set showcmd                                              " show me what I'm typing
set noshowmode                                           " show current mode.
set nowrap                                               " do not wrap long lines
set lazyredraw                                           " disables unnecessary redrawings, like on middle of macros
set laststatus=2                                         " controls whether to show the bottom status line
set showtabline=2                                        " always shows tab line independent of having more than one
set list                                                 " show invisible characters
set listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:% " invisible characters representation
" set listchars+=eol:¬,space:·
set cmdheight=2                                          " more space for displaying messages.
set shortmess+=c                                         " don't display messages about completions
set signcolumn=yes                                       " always show sign column

" vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" }}}
" Split Settings {{{

set splitright " split vertical windows right to the current windows
set splitbelow " split horizontal windows below to the current windows

" }}}
" Tab & Folding Settings {{{

set expandtab         " tabs are spaces
set shiftwidth=2      " number of spaces by indent
set tabstop=2         " number of visual spaces per TAB
set softtabstop=2     " number of spaces in tab when editing
set foldenable        " enable folding
set foldmethod=indent " fold based on indent level
set foldlevelstart=5  " open 10 folds by default
set foldnestmax=10    " limits folds to 10

" }}}
" Searching Settings {{{

set noshowmatch " do not show matching brackets by flickering
set incsearch   " shows the match while typing
set hlsearch    " highlight found searches
set ignorecase  " search case insensitive...
set smartcase   " ... but not when search pattern contains upper case characters

" }}}
" Color Settings {{{

colorscheme base16
set nocursorcolumn                    " disable column hightlight
set nocursorline                      " disable line hightlight
call matchadd('ColorColumn', '\%81v') " hightlight characters at column 81

" }}}
" Completion Settings {{{

set completeopt=menuone,noinsert,preview

" }}}
" Plugins Configuration {{{
" Startify {{{
let g:startify_session_dir='~/Workspaces/nvim'
let g:startify_session_autoload=1
let g:startify_session_number=5
let g:startify_session_persistence=1
let g:startify_session_sort=1
let g:startify_change_to_vcs_root=1
let g:startify_custom_header='startify#pad(startify#fortune#boxed())'
let g:startify_lists=[
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']    },
  \ { 'type': 'sessions',  'header': ['   Sessions']     },
  \ { 'type': 'files',     'header': ['   Recent Files'] },
  \ ]
let g:startify_bookmarks = [
  \ { 'c': '~/.dfiles' }
  \ ]
" }}}
" Key Mappings {{{

let mapleader="\<space>"

nnoremap <silent> <leader>ev :sp $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>

" make `U` behave as redo
nnoremap U <C-r>
" make `Y` more consistent when related to `D` and `C`
nnoremap Y y$
" make `S` behave like `X`, and keep `s` as `x`
nnoremap S hs

" FZF {{{

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-S-f> :Rg<CR>

" }}}
" EasyAlign {{{

" start interactive in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" start interactive for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" }}}
" }}}

" vim:foldmethod=marker:foldlevel=0
