set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'


"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'l9'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/nerdtree'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'rstacruz/sparkup'
"Plugin 'majutsushi/tagbar'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'joonty/vdebug'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
syntax on

filetype plugin indent on    " required
set number
set ts=3
set vb
set background=dark
set incsearch
set scrolloff=2
set history=300
set showmatch
set showmode
set hlsearch
set ruler
set shiftwidth=2
set autoindent
set smartindent

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"set completeopt-=preview
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_collect_identifiers_from_tags_files = 1
"
"
"let g:tern_map_keys=1
"let g:tern_show_argument_hints='on_hold'
"
"autocmd FileType javascript setlocal omnifunc=tern#Complete
"
"let NERDTreeShowHidden=0
autocmd BufWinLeave .* mkview
autocmd BufWinEnter .* silent loadview
filetype on
set backspace=2
filetype plugin indent on
filetype plugin on
