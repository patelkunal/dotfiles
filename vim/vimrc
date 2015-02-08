"set curson position to last know position.
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

"""""""""""""""""""""""""""""""""""
""" General Commands
set history=700

set number

set mouse+=a

filetype off
filetype plugin indent on

set autoread " Set to auto read when a file is changed from the outside

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" toggle paste mode
set pastetoggle=<F2>

""""""""""""""""""""""""""""""""""
""" user interface

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set cursorline

"""""""""""""""""""""""""""""""""""""
""" Files, backups and undo

" Turn backup off
set nobackup
set nowb
set noswapfile

set nocompatible

"""""""""""""""""""""""""""""""""""""
""" text, tabs and indent

" set autoindent
set smartindent

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set copyindent
set preserveindent

set showmatch " show matching brackets in source code
set textwidth=79
" set colorcolumn=+1

set wrap

""""""""""""""""""""""""""""""""""""
""" misc commands
set showcmd " show command output at bottom of the file if wrong syntax

set modelines=0

""""""""""""""""""""""""""""""""""""""'
""" Colors and fonts

" Enable syntax highlighting
syntax on

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions+=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" highlight ColorColumn ctermbg=240

" wombat colour scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

"""""""""""""""""""""""""""""""""""""""""""""""
""" plugin related commands

" setting up pathogen for vim plugin managment
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()

" settings for vim-powerline
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" settings for vim-airline
" git clone https://github.com/bling/vim-airline
" Basic config are already set in vim-powerline settings section


" settings for jedi-vim
" pip install jedi --user
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usage_command = "<leader>z"
let g:jedi#documentation_command = "K"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
let g:jedi#popup_select_first = 0

" python related commands
autocmd FileType python setlocal completeopt-=preview

" gradle related commnads
au BufNewFile,BufRead *.gradle set filetype=groovy
