set nocompatible
set encoding=utf-8

set t_Co=256
colorscheme wombat256

set autoindent
set smartindent
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4

set colorcolumn=80
set nomodeline

set hlsearch

set noruler
set wildmenu
set cmdheight=1
set laststatus=2
set showmode
set showcmd

filetype plugin indent on
syntax on

autocmd FileType python set softtabstop=4 shiftwidth=4 expandtab autoindent

set guifont=DejaVu_Sans_Mono:h10:cRUSSIAN

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display whitespace characters
set list
set listchars=tab:‣\ ,trail:·,extends:⋯,precedes:⋯,nbsp:•

" Disable higlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Show matching brackets
set showmatch
" Make < and > match as well
set matchpairs+=<:>

hi User1 ctermfg=220 ctermbg=235 guifg=#ffd700 guibg=#262626
hi User2 ctermfg=160 ctermbg=235 guifg=#d70000 guibg=#262626
hi User3 ctermfg=177 ctermbg=235 guifg=#d787ff guibg=#262626
hi User4 ctermfg=155 ctermbg=235 guifg=#afff5f guibg=#262626
hi User5 ctermfg=221 ctermbg=235 guifg=#ffd75f guibg=#262626
hi User6 ctermfg=239 ctermbg=235 guifg=#4e4e4e guibg=#262626

set statusline=
set statusline +=%1*\ %n\ %*              " buffer number
set statusline +=%5*%{&ff}\ %*            " file format
set statusline +=%3*%y\ %6*\|%*           " file type
set statusline +=%4*\ %<%f\ %6*\|%4*%*    " full path
set statusline +=%2*\ %m%6*%*             " modified flag
set statusline +=%6*%=\|\ %1*%05l%*       " current line
set statusline +=%6*\ \|\ %2*%05L%*       " total lines
set statusline +=%6*\ \|\ %5*%04v%6*%*    " virtual column number
set statusline +=%6*\ \|\ %2*\ %3p%%\ %*  " percentage position

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reload .vimrc after save changing
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

