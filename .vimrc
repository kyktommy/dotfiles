set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set enc=utf8
set gfn=Bitsream\ Vera\ Sans\ Mono':h20
set paste
set hlsearch
set incsearch
set showmatch

set ignorecase smartcase
set winwidth=79

filetype on 
filetype plugin indent on 

" Backup in a central spot - gb
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Make tab comletion for files/butters act like bash
set wildmenu

set showmatch
set vb t_vb=
set ruler
set nohls
set nu

set tildeop

if has("gui_running")
	set go-=T
end

syntax enable
set backspace=2

"backup and swap file
" set nobackup
" set nowritebackup
" set noswapfile

:fixdel

"UTF-8
set enc=utf8

"auto change dir with current file
" set autochdir
" autocmd BufEnter * silent! lcd %:p:h

"\n open NERDTree
nnoremap <leader>n :NERDTree<CR>

"clipboard
set clipboard=unnamed

"pathogen
call pathogen#infect()

"zencoding 
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

"map arrow key
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>


" Fetch plugin
noremap :fm :FetchManage

"indent
set autoindent
set smartindent

"color
" colorscheme desert
" :highlight LineNr ctermfg=grey
" colorscheme railscast

" solarized options 
set background=dark
let g:solarized_termcolors=256
let g:solarized_termcolors=16
let g:solarized_visibility="low"
colorscheme solarized

" CommandT Flush
noremap <C-f> :CommandTFlush<CR>

" rspec
noremap :rs :!rspec

" Quick resize window
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

"Powerline
" let g:Powerline_theme="skwp"
" let g:Powerline_colorscheme="skwp"
let g:Powerline_symbols="fancy"
