" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		"autocmd VimEnter * PlugInstall
		"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Syntax Support
	Plug 'sheerun/vim-polyglot'
  " Theme
  Plug 'morhetz/gruvbox'
	" Airline/Statusline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Fuzzy Finder
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	" Terminal
	Plug 'voldikss/vim-floaterm'
	" Completion & Linting
	Plug 'dense-analysis/ale'
	Plug 'airblade/vim-rooter'
	Plug 'tpope/vim-commentary'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
