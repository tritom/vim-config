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
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

" Auto add closing quotes, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Auto completion...
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" Easy commenting using \cc and \cu
Plugin 'scrooloose/nerdcommenter'

" Super File Search
Plugin 'https://github.com/kien/ctrlp.vim'

" Color scheme
Plugin 'jacoborus/tender.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


filetype on

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ts set filetype=typescript

:set hidden
:set nowrap
:set tabstop=2     " a tab is four spaces
:set backspace=indent,eol,start " allow backspacing over everything in insert mode
:set autoindent    " always set autoindenting on
:set copyindent    " copy the previous indentation on autoindenting
:set number        " always show line numbers
:set shiftwidth=2  " number of spaces to use for autoindenting
:set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
:set showmatch     " set show matching parenthesis
:set ignorecase    " ignore case when searching
:set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
:set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
:set hlsearch      " highlight search terms
:set incsearch     " show search matches as you type"
:set history=1000         " remember more commands and search history
:set undolevels=1000      " use many muchos levels of undo
:set wildignore=*.swp,*.bak,*.pyc,*.class
:set title                " change the terminal's title
:set visualbell           " don't beep
:set noerrorbells         " don't beep
:set nobackup
:set noswapfile
:set expandtab 
:retab
:set pastetoggle=<F2> "when pasting large text, hitting f2 will disable vim smarts"

filetype plugin indent on
syntax enable
set background=dark
colorscheme tender

" <Ctrl-c> when within curly brace it will auto move cursor to next line, indent, and place 
" closing brace appropriately
imap <C-c> <CR><Esc>O 

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" w!! will sudo write AFTER file has been opened
cmap w!! w !sudo tee % >/dev/null

""" CtrlP Config
" Smartly detect root working directory
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* 
" Open CtrlP buffer
map <leader>b :CtrlPBuffer 

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

let g:NERDDefaultAlign = 'left'
