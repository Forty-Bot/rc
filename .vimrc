" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Git extensions
Plugin 'fugitive.vim'

" Colors
Plugin 'Solarized'

" Ctags integration
Plugin 'ludovicchabant/vim-gutentags'

" Tab completion
Plugin 'vim-scripts/VimCompletesMe'

" Syntastic
"Plugin 'scrooloose/syntastic'

" cmake integration
Plugin 'jalcine/cmake.vim'

" Source .lvimrc files
Plugin 'embear/vim-localvimrc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" vimcompletesme
"set runtimepath^=~/.vim/bundle/VimCompletesMe

" Enable syntax highlighting
syntax on

" Solarized settings
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

" Use generated ctags
set tags+=~/.vim/tags
" Open tags in a new tab
nnoremap <silent><C-]> <C-w><C-]><C-w>T
vnoremap <silent><C-]> <Esc><C-w><C-]><C-w>T

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_compiler_options = "-std=c++11 -stdlib=libc++"

" cmake settings
let g:cmake_build_dirs = [ "build" ]

" Enable local vimrcs
let g:localvimrc_persistent = 1

" Make navigating splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Custom tab navigation
nnoremap <A-Right> :tabnext<CR>
nnoremap <A-Left> :tabprevious<CR>

" New buffers open below and to the right
set splitbelow
set splitright

" Line Numbers
set number

" Easier searching
set ignorecase
set smartcase

" Automatically insert the same indentation as the previous line
set autoindent
