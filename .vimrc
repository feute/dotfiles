syntax on
set number
set t_Co=256 

set backspace=2
set noswf
set statusline=%<%-1.(%M%)\ %f\ %Y\ %R%=%l/%L\ %P

" Sets how many lines of history VIM has to remember
set history=700

" cursor line
set cursorline

" execute pathogen#infect()

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>
" " :W sudo saves the file
" " (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
" set ignorecase

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Always show the status line
set laststatus=2

set pastetoggle=<f5>


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" list chars, end of line and tabs
set listchars=eol:↲,tab:→\ 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <F8> :TagbarToggle<CR>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

colo beau
