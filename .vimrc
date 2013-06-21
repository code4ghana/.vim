" Automatic reading of .vimrc
autocmd! bufwritepost .vimrc source %
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

"show line numbers and length
set number "show line numbers
set tw=79  " width of document
set nowrap "don't automatically wrap  on load
highlight  ColorColumn ctermbg=233

"easier formatting of paragraphs
vmap  Q pq

" Useful settings
set history=700
set undolevels=700


"spaces instead of TABS
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"make serach case insensitive by default
set hlsearch
set incsearch
set ignorecase
set smartcase

"Setup Pathogen plugin manager 
"mkdir -p ~/.vim/autoload ~/.vim/bundled
"curl -so ~/.vim/autoload/pathogen.vim
"https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
call pathogen#infect()


