call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'
call plug#end()

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" Base16 settings.
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
