if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'haya14busa/vim-keeppad'
Plug 'jceb/vim-orgmode'


" ?? something was asking for it
Plug 'tpope/vim-speeddating'

" THEMES
Plug 'gmoe/vim-espresso'
Plug 'mr-ubik/vim-hackerman-syntax'
Plug 'evanram/mandevilla'
Plug 'flrnprz/candid.vim'

call plug#end()


" this is for org mode
filetype plugin indent on

set nu
set t_Co=256
" set background=dark
" colorscheme hackerman
colorscheme mandevilla

" https://www.reddit.com/r/vim/comments/4b8ie3/execute_goyo_plugin_when_opening_markdown_file/
autocmd VimEnter * Goyo
