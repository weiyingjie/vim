let mapleader=" "
syntax on

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set number
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase   
set autoindent  
set relativenumber  " 行号 "
set cursorline  " 光标线 "
set wrap    " 自动换行 "
"set linebreak "单词内部不换行"
set showcmd " 指令 "
set wildmenu
set hlsearch    " 搜索高亮 "
exec "nohlsearch"
set incsearch   " 边搜索边高亮 "
set cindent  
set backspace=indent,eol,start " 设置退格生效
set t_Co=256
set scrolloff=5
set expandtab  " tab->空格

" 主题
colorscheme gruvbox
set background=dark

"状态行显示的内容
set statusline=%1*%f%m%r%h%w\%=%y
set statusline+=%1*%{\"\ [\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\ \"}
set statusline+=%1*[POS=%l\/%L,%v\|%p%%]\ %{strftime(\"%Y/%m/%d\ -\ %H:%M\")}

hi User1 cterm=None ctermfg=253 ctermbg=238

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  

set tags=/home/weiyingjie/weiyingjie/insos/build_dir/target-x86_64-redhat-linux/netifd-2015-12-16/tags

" 记录光标位置
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

noremap W :wa<cr>
noremap Q :q<CR>

inoremap jj <ESC>j
inoremap kk <ESC>k
inoremap "" ""<++><ESC>4hi
inoremap '' ''<++><ESC>4hi
inoremap {} {}<++><ESC>4hi
inoremap () ()<++><ESC>4hi
inoremap <> <><++><ESC>4hi
inoremap [] []<++><ESC>4hi
inoremap ,f <ESC>f<c4l

map R :source $MYVIMRC<CR>
noremap VR :vsp $MYVIMRC<CR>
map s <nop>

map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map sw :set nosplitbelow<CR>:split<CR>
map ss :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

map <C-k> :res +5<CR>
map <C-j> :res -5<CR>
map <C-h> :vertical resize-5<CR>
map <C-l> :vertical resize+5<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map tl :tabnext<CR>
map th :tabprevious<CR>
map tn :tabnew 

" Filetype based Mappings----{
" Get current filetype -> :echo &filetype or as variable &filetype
" [ Builds / Compiles / Interpretes  ]

" C:
autocmd FileType c,cpp nnoremap <buffer> [[ I//<ESC><CR>
autocmd FileType c,cpp nnoremap <buffer> ]] :s/^\(\s*\)\/\//\1/<CR><CR>

" Lua:
autocmd FileType lua nnoremap <buffer> [[ I--<ESC><CR>
autocmd FileType lua nnoremap <buffer> ]] :s/^\(\s*\)\-\-/\1/<CR><CR>

" Python:
autocmd FileType python nnoremap <buffer> [[ I#<ESC><CR>
autocmd FileType python nnoremap <buffer> ]] :s/^\(\s*\)#/\1/<CR><CR>

" Shell:
autocmd FileType sh nnoremap <buffer> [[ I#<ESC><CR>
autocmd FileType sh nnoremap <buffer> ]] :s/^\(\s*\)#/\1/<CR><CR>

" CONF:
autocmd FileType vim nnoremap <buffer> [[ I"<ESC><CR>
autocmd FileType vim nnoremap <buffer> ]] :s/^\(\s*\)"/\1/<CR><CR>
