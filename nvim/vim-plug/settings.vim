" LEADER
let g:mapleader = "\<Space>"

" BASE CONFIG
syntax enable
set hidden
set nowrap
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set iskeyword+=-
set splitbelow
set splitright
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set laststatus=0
set number
set cursorline
set background=dark
set showtabline=2
set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set formatoptions-=cro

" AUTOSAVE TO VIMRC
au! BufWritePost $MYVIMRC source %

" REMAPS
noremap <leader><leader> :bnext <CR>

" FLOATERM
noremap <leader>\t :FloatermNew <CR>
noremap <leader>\n :FloatermNext <CR>
noremap <leader>\d :FloatermKill <CR>
noremap <leader>\l :FloatermLast <CR>
noremap <leader>\f :FloatermFirst <CR>
noremap <leader>\\ :FloatermToggle <CR>
