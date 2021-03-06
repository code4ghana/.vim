" Automatic reading of .vimrc
autocmd! bufwritepost .vimrc source %

"******VUNDLE**********
set nocompatible              " be iMproved, required
filetype off                  " required
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required


"*******END VUNDLE********

" Better clipboard
set pastetoggle=<F2>
set clipboard=unnamed

"Easier moving of code around
vnoremap < <gv
vnoremap > >gv

"Show whitespace
"Must come before colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

"Color scheme
"mkdir -p ~/.vim/colors	&& cd ~/.vim/colors
"wget  -O  wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

"Enable syntax highlting
"Need to reload file for it to work properly
filetype off
filetype plugin indent on
syntax on

"Some Linux distributions set filetype in /etc/vimrc.
"  " Clear filetype flags before changing runtimepath to force Vim to reload
"  them.
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

"fmt GO code n save

"show line numbers and length
set number "show line numbers
set nowrap "don't automatically wrap  on load
highlight  ColorColumn ctermbg=233

"easier formatting of paragraphs
vmap  Q pq

" Useful settings
set history=700
set undolevels=700

"shift-tab ability
imap <S-Tab> <C-o><<

"spaces instead of TABS
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"make serach case insensitive by default
set hlsearch
set smartcase
set ignorecase
set incsearch

"insert newline without entering into insert mode
"Setup Pathogen plugin manager 
nmap <C-k> kdd
nmap <C-j> O<Esc>j

"swtich buffers with [
nmap [ bNext
"
"*********awesome jsbeautify*******************
"git clone git://github.com/maksimr/vim-jsbeautify.git  cd ~/.vim/bundle
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"mkdir -p ~/.vim/autoload ~/.vim/bundled
"curl -so ~/.vim/autoload/pathogen.vim
"https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"
"
call pathogen#infect()
"
" ============================================================================
" " Python IDE Setup
" "
" ============================================================================
"
"
"
"
"
"
"*****************Settings for vim-powerline ************ 
"git clone git://github.com/Lokaltog/vim-powerline.git  cd ~/.vim/bundle
set laststatus=2
"
"
"****************Settings for ctrlp**********************
"git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"****************Settings for jedi-vim******************
"pip install jedi
"git clone git://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"**************python folding**********************
"mkdir -p ~/.vim/ftplugin && curl -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"set nofoldenable
set foldmethod=indent

"*************Syntastic for on the fly syntax checking*****************
"git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
"
"
"
"***********MatchTagAlways for html tag highlighting******************
"git clone https://github.com/Valloric/MatchTagAlways.git ~/.vim/bundle/matchtag
"
"***********Remap colon and semicolon*******************************
:noremap ; :
:noremap : ;


"***********Allow buffer switching without saving*******************************
set hidden
