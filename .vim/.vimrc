set nocompatible
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set enc=utf8
set gfn=Inconsolata:h20

"set colorscheme
"colors sahara

" Make tab comletion for files/butters act like bash
set wildmenu

set t_Co=256 " 256 colors
set showmatch
set vb t_vb=
set ruler
set nohls
set incsearch
set nu

if has("gui_running")
	set go-=T
end

syntax enable
set backspace=2

"backup and swap file
set nobackup
set nowritebackup
set noswapfile

:fixdel

"UTF-8
set enc=utf8

"auto change dir with current file
set autochdir
autocmd BufEnter * silent! lcd %:p:h

"\n open NERDTree
nnoremap <leader>n :NERDTree<CR>

"clipboard
set clipboard=unnamed

"pathogen
call pathogen#infect()

"zencoding shortcut 'ctrl-e'
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

"map arrow key
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set tildeop

" Setup solarized theme
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized
call togglebg#map("<leader>bg")
