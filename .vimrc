set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set enc=utf8
set gfn=Bitsream\ Vera\ Sans\ Mono':h20
set hlsearch
set incsearch
set showmatch

set ignorecase smartcase
set winwidth=79

filetype on 
filetype plugin indent on 

" Map previous, next buffer
noremap <Leader>q :bN<cr>
noremap <Leader>w :bn<cr>
noremap <Leader>e <C-^>

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


"clipboard
set clipboard=unnamed

"pathogen
call pathogen#infect()

"zencoding 
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

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

"""" KEY MAPPING
noremap :rs :!rspec              " rspec
nnoremap <leader>n :NERDTree<CR> " Open NERDTree

" Quick resize window
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

"map arrow key
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"format all
function! FormatAll()
  normal ggVG=
endfunction

noremap <leader>ff :call FormatAll()<CR>

"remap save
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

"ruby-xmpfilter
nmap <buffer> <leader>w <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
" xmap <buffer> <leader>w <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
" imap <buffer> <leader>w <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
"
" set laststatus=2
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_cache_enabled = 1
" let g:Powerline_cache_file='~/.vim/bundle/powerline/Powerline.cache'
"

"T-Comment
nmap <leader><leader><leader> :TComment<cr>
vmap <leader><leader><leader> :TComment<cr>
