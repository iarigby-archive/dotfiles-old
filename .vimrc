if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'tomasr/molokai'
Plug 'haya14busa/vim-keeppad'
Plug 'jceb/vim-orgmode'
Plug 'gmoe/vim-espresso'
call plug#end()


" this is for org mode
filetype plugin indent on

autocmd VimEnter * Goyo
set nu
set t_Co=256
set background=dark
colorscheme espresso
