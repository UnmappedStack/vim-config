call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()
set noshowmode
nnoremap t :NERDTreeToggle<CR>
set ttimeout
set ttimeoutlen=90
set timeoutlen=2000
set updatetime=200
autocmd ModeChanged * :redrawstatus
command Q q
command W w
set number relativenumber

set nowrap

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

syntax on

filetype plugin on

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

autocmd BufNewFile,BufRead *.ctf set syntax=rust

colorscheme tokyonight

autocmd FileType nerdtree setlocal number relativenumber

set clipboard=unnamedplus
nnoremap x "_x
