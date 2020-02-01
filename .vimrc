let mapleader=" "
syntax on

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set number
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase	
set autoindent  
set relativenumber	" 行号 "
set cursorline	" 光标线 "
set wrap	" 自动换行 "
set showcmd	" 指令 "
set wildmenu
set hlsearch	" 搜索高亮 "
exec "nohlsearch"
set incsearch	" 边搜索边高亮 "
set cindent  
set backspace=indent,eol,start " 设置退格生效
set t_Co=256
set scrolloff=5
hi Normal ctermfg=252 ctermbg=none

noremap W :w<CR>
noremap Q :q<CR>
noremap T :NERDTreeToggle<CR>

noremap <C-p> :MarkdownPreview<CR>

inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

map R :source $MYVIMRC<CR>
map s <nop>

map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map sw :set nosplitbelow<CR>:split<CR>
map ss :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

map <C-up> :res +5<CR>
map <C-down> :res -5<CR>
map <C-left> :vertical resize-5<CR>
map <C-right> :vertical resize+5<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"plugins"
call plug#begin('~/.vim/plugged')

" vim-airline
Plug 'vim-airline/vim-airline'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" NerdTree
Plug 'preservim/nerdtree'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

call plug#end()

"theme"
colorscheme dracula
"opacity
hi Normal ctermfg=252 ctermbg=none
" let g:SnazzyTransparent = 1
" color snazzy

"NERDTree"

"autocmd vimenter * NERDTree 自动打开

let NERDTreeShowHidden=1

let NERDTreeWinSize = 25

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"YouCompleteMe"
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
