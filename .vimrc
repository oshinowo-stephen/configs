syntax on

set nu
set nowrap
set hidden
set nobackup
set tabstop=2 
set expandtab
set smartcase
set noshowmode
set noswapfile
set noshowmode
set autoindent
set scrolloff=8
set smartindent
set shiftwidth=2
set noerrorbells
set termguicolors

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Just incase if lightline doesn't pop up
set laststatus=2

" column stuff...
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme onedark
set background=dark

let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ }

function! LightlineFilename()
	return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
		\ &filetype ==# 'unite' ? unite#get_status_string() :
		\ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
		\ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

" Start in INSERT mode
autocmd BufRead,BufNewFile * start
