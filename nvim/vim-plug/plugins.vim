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
	" Completion & Linting
	Plug 'ncm2/ncm2'
  Plug 'ncm2/ncm2-path'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-racer'
	Plug 'ncm2/ncm2-bufword'
	Plug 'dense-analysis/ale'
	Plug 'airblade/vim-rooter'
  Plug 'mhartington/nvim-typescript'

call plug#end()
