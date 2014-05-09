syntax on
set t_Co=256
set encoding=utf-8
set clipboard=unnamed
"set number
set tabstop=4 shiftwidth=4 softtabstop=4 "expandtab

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
"Special white space Ctrl-V u2002
set listchars=tab:> ,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

let mapleader=","
nmap ; :
nmap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>j :YcmCompleter GoTo<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>h :tabprev<CR>
nnoremap <leader>v :vnew<CR>

nnoremap <leader>s :UltiSnipsEdit<CR>
nnoremap <leader>o :only<CR>
nnoremap <leader>b :CommandTBuffer<CR>
vnoremap <S-s> :ScreenSend<CR>


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
Bundle 'wincent/Command-T'
Bundle 'ervandew/supertab'
Bundle 'ervandew/screen'

colorscheme desert-warm-256
let g:vundle_default_git_proto = 'git'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

filetype plugin indent on


set hidden

" let g:ycm_open_loclist_on_ycm_diags = 1
" let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1 }
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion=1
"set mouse=a


"nnoremap <leader>m :call ReadMan()<CR>

let $PAGER=''

au Filetype python setl et ts=4 sw=4
au BufWritePost .vimrc so ~/.vimrc

let g:ScreenImpl = "Tmux"
let g:ScreenShellSendPrefix = "%cpaste"
let g:ScreenShellSendSuffix = "--"
