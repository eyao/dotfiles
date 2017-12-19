set nocompatible
filetype off

let $FZF_DEFAULT_COMMAND='ag -l -g ""'

call plug#begin('~/.vim/plugged')

Plug 'ElmCast/elm-vim'
" Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'derekwyatt/vim-scala'
Plug 'gre/play2vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

Plug 'chriskempson/base16-vim'
Plug 'junegunn/vim-easy-align'
Plug 'w0rp/ale'

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with
" ESLint.
let g:ale_fixers = {
\   'javascript': ['prettier'],
\}

let g:ale_fix_on_save = 1


" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql ALEFix


" Plugins above
call plug#end()
filetype plugin indent on

let base16colorspace=256

syntax enable
" set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2

vmap <C-S-x> "+x
vmap <C-S-c> "+y
imap <C-S-v> <Esc>"+gp
cmap <C-S-v> <C-r>"
set pastetoggle=<F2>
set smartcase

nnoremap <space>ff :Files<CR>
nnoremap <space>sap :Ag<CR>
nnoremap <space>bb :Buffers<CR>
nnoremap <space>xa :EasyAlign<CR>
vnoremap <space>xa :EasyAlign<CR>

set hlsearch   " highlight search matches
set incsearch  " search while characters are entered
set ignorecase " search is case-insensitive
set hidden

