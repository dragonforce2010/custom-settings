call plug#begin('~/.vim/plugged')

Plug 'jnurmine/Zenburn'          " Colour Scheme
Plug 'flazz/vim-colorschemes'     " More Color Schemes
Plug 'kien/ctrlp.vim'            " Fuzzy file search
Plug 'easymotion/vim-easymotion' " Allows you to quickly move to different parts of the file
Plug 'Raimondi/delimitMate'      " Provides insert mode auto-completion for quotes, parens, etc.
Plug 'tomtom/tcomment_vim'       " Comment shortchuts
Plug 'airblade/vim-gitgutter'    " Shows git commentary on the side
Plug 'sheerun/vim-polyglot'      " Language packs 
Plug 'vim-scripts/ruby-matchit'  " Linter
Plug 'ngmy/vim-rubocop'          " Auto-complete 'end'
Plug 'tpope/vim-endwise'         " intelligently add 'end'
Plug 'thoughtbot/vim-rspec'      " Run rspec from vim
Plug 'tmhedberg/matchit'         " Advanced bracket matching
Plug 'brookhong/ag.vim'          " grep alternative (silver searcher)
Plug 'MarcWeber/vim-addon-mw-utils' " Snippets engine
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'        " Snippets are separated from the engine
Plug 'danro/rename.vim'          " rename files within cwd
Plug 'scrooloose/nerdtree'       " directory navigation

" Syntax highlighting
Plug 'slim-template/vim-slim'    " Rails Slim template 
Plug 'kchmck/vim-coffee-script'  " Coffeescript 
Plug 'othree/html5.vim'          " HTML 
Plug 'mustache/vim-mustache-handlebars' " Handlebars (ember.js)
Plug 'jelera/vim-javascript-syntax' " Javascript

call plug#end()

syntax on                       " enable syntax highlighting
filetype plugin indent on       " indentation based on file type
set re=1                        " This fixes the problem with slowness in ruby syntax highlighting 
set number 		                  " Show line numbers
set relativenumber
set cursorline
set showcmd 		                " show incomplete commands
set scrolloff=5                 " lines to keep when scrolling
set wrap                        " wrap text when displaying (does not alter the line)
set showmatch                   " show matching parentheses
set undofile                    " preserve undo on exit
set mouse-=a                    " allow mouse movements if available
set clipboard=unnamed           " allow yank and paste from clipboard if available
set expandtab                   " (insert) insert space whenever a tab key is pressed
set tabstop=2                   " (insert) number of spaces in a tab
set shiftwidth=2                " (insert) number of spaces characters used for indentation
set autoindent                  " (insert) copy indent from current line when going to next line 
set smartindent                 " (insert) smart autoindenting when starting a new line
set nocindent                   " (insert) do not use cindent indenting mode
set hlsearch                    " (normal) highlight search terms
set incsearch                   " (normal) show found search term as you type
set pastetoggle=<F2>            " (normal) when pasting ignore auto indentation rules"
set wildmenu                    " (normal) menu autocomplete
set undodir=~/.undodir

let NERDTreeShowHidden=1
let mapleader = "\<Space>"      " (normal) map leader to space bar

" Stop that stupid window from popping up
map q: :q

" jk to escape into normal mode
inoremap jk <ESC>
" Type <Space>w to save file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>v :vsplit<CR>
" Type <Space>q to quit
nnoremap <Leader>q :q<CR>

" Automatically jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Tab shortcuts
nnoremap T :tabnext<CR>
nnoremap D :tabprev<CR>

" move line up/down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>

" Select word easily
nnoremap vv viw

" CTRL-P
nnoremap <Leader>o :CtrlPCurWD<CR>
nnoremap <Leader>i :CtrlPTag<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Quick search prompt
nnoremap <Leader>g :Ag 

" bind K to grep word under cursor
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Use comma in normal mode to perform bi-directional easymotion
nmap , <Plug>(easymotion-bd-w)

" Open tag in new tab
:nnoremap <silent><Leader>c <C-w><C-]><C-w>T

" vim rspec
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>f  :call RunCurrentSpecFile()<CR>

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

" Snippet trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" NerdTree 

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Zenburn colorscheme
let g:zenburn_transparent = 1
colorscheme zenburn


" Inital Settings
colorscheme wintersday
