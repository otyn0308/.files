if has("syntax")
  syntax on
endif

set number
set title
set cursorline
set showcmd
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
set showmatch
set hidden
set nobackup
set noswapfile
set ignorecase
set smartcase
set hlsearch

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-x> <C-w>x
nnoremap <silent><C-e> :NERDTree<CR>

filetype plugin indent on

colorscheme deus

"twitvim
let twitvim_browser_cmd = 'firefox'
let twitvim_force_ssl = 1
let twitvim_count = 100
nnoremap <C-f> :FriendsTwitter<CR>
nnoremap <C-p> :PosttoTwitter<CR>
nnoremap <S-r> <Leader>r
nnoremap <S-f> <Leader>f

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/otyn0308/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/otyn0308/.cache/dein')

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
call dein#add('ajmwagar/vim-deus')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
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

"End dein Scripts-------------------------
