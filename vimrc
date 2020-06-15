
filetype plugin indent on
syntax on
 
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
let mapleader = "\<Space>"
 
" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backup
set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set ignorecase    " ignore case when searching
set smartcase     " unless we have at least 1 cap
set title         " set our title when running in term
set showmatch
 
nnoremap <leader> <leader>  :nohlsearch<Bar>:echo<CR>
 
" configure airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
 
" Configure Ale
" let g:ale_completion_enabled = 1
" let g:ale_linters = {'python':['fbflake8', 'pyls', 'pyre']}
" let g:ale_fixers = {'python': ['pyfmt']}
" let g:ale_python_pyls_executable = '/usr/local/bin/pyls-language-server'
let g:ale_fix_on_save = 1
 
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
 
nmap <leader>l :ALEFix<CR>
 
" Make Me Pretty
set termguicolors
set background=dark
colorscheme solarized8
 
" Numbers
set numberwidth=4
set number
set relativenumber
 
" allow background buffers w/o saving
set hidden
 
" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t
 
" set the command height
set cmdheight=2
 
" nerdtree
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>ff :NERDTreeFind<CR>
 
" tagbar
nmap <leader>t :TagbarToggle<CR>
 
" avoid escape
inoremap jk <Esc>
inoremap kj <Esc>
 
" I really need to learn to use hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
 
" Load all plugins now.
packloadall
silent! helptags ALL
