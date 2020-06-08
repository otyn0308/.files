if has("syntax")
  syntax on
endif

set t_Co=256
set number
set title
set cursorline
set showmode
set showcmd
set ruler

set laststatus=2
set statusline=%F

set tabstop=4
set shiftwidth=2
set expandtab

set showmatch
set hidden
set nobackup
set noswapfile

set ignorecase
set smartcase
set hlsearch

set background=dark
set termguicolors

set clipboard=unnamed,autoselect

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-x> <C-w>x
nnoremap <silent><C-e> :NERDTree<CR>
inoremap jj <Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

let NERDTreeShowHidden = 1

filetype plugin indent on

"----------Twitter-------------------------------
let twitvim_browser_cmd = 'firefox'
let twitvim_force_ssl = 1
let twitvim_count = 100
nnoremap <C-f> :FriendsTwitter<CR>
nnoremap <C-p> :PosttoTwitter<CR>

"----------colors--------------------------------
let g:airline_theme='otynium'

"colors molokai
colors otynium
"colorscheme quantum
"colors deus

"highlight Normal ctermbg=NONE guibg=NONE
"highlight NonText ctermbg=NONE guibg=NONE
"highlight SpecialKey ctermbg=NONE guibg=NONE
"highlight EndOfBuffer ctermbg=NONE guibg=NONE

"----------dein Scripts--------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler')
call dein#add('scrooloose/nerdtree')
call dein#add('Townk/vim-autoclose')
call dein#add('ConradIrwin/vim-bracketed-paste')
call dein#add('tyrannicaltoucan/vim-quantum')
call dein#add('ajmwagar/vim-deus')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('mattn/webapi-vim')
call dein#add('mattn/vim-mastodon')
call dein#add('twitvim/twitvim')

" You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"----------End dein Scripts----------------------
