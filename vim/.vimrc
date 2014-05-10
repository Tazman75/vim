set t_Co=256
set background=dark
colorscheme desert

set tabstop=4 shiftwidth=4 "expandtab

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/Vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on 

set hidden "Lets you have unwritten tabs
set smartindent "Smart c indenting
set ignorecase "ignore case when searching
set copyindent "copy previous indenting
set nowrap
set backspace=indent,eol,start "allow backspacing over all

set hlsearch "Highlighting
set incsearch "highligh as you tipe
highlight ColorColumn ctermbg=236

"Whitespace highlighting
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>

set mouse=a "Used for scrolling
noremap ; :

"window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"Simple way to clear the history
nmap <silent> ,/ :nohlsearch<CR> <silent> ,/ :nohlsearch<CR>

