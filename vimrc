syntax on
set encoding=utf-8
set clipboard=unnamed
"set number
set tabstop=8 shiftwidth=8 "expandtab

set nocompatible
set nowrap

set hidden "Lets you have unwritten tabs
set smartindent "Smart c indenting
set ignorecase "ignore case when searching
set copyindent "copy previous indenting
set nowrap
set backspace=indent,eol,start "allow backspacing over all

set hlsearch
set incsearch
set ignorecase

set pastetoggle=<F2>

"
"Whitespace highlighting
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

let mapleader=","
nmap ; :
nmap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j :YcmCompleter GoTo<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>h :tabprev<CR>
nnoremap <leader>v :vsplit<CR>
inoremap <S-Tab> <C-o><<

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'altercation/vim-colors-solarized'
Bundle 'desert-warm-256'
Bundle 'SirVer/ultisnips'
Bundle 'rstacruz/vim-ultisnips-css'

filetype plugin indent on

set t_Co=256
colorscheme desert-warm-256

set hidden

" let g:ycm_open_loclist_on_ycm_diags = 1
" let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1 }
let g:ycm_confirm_extra_conf = 0
"set mouse=a


"nnoremap <leader>m :call ReadMan()<CR>

let $PAGER=''

au Filetype python setl et ts=4 sw=4
