" LOADING
execute pathogen#infect()

" LEADER
let mapleader=" "

" FILE TYPES
filetype on
filetype plugin on

" THEME & LAYOUT
colorscheme Tomorrow-Night-Eighties
set guifont=Menlo\ Regular:h18
set colorcolumn=90
set number
syntax on
let g:gitgutter_sign_column_always=1

" SEARCH
set hlsearch

" PERFORMANCES & HISTORY
set hidden
set history=100

" SWAP FILES
set shortmess+=A

" TEXT FORMATTING
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set cursorline

" BUFFERS
map <leader>n :bn<CR>
map <leader>m :bp<CR>
map <leader>d :bd<CR>

autocmd BufWritePre * :%s/\s\+$//e " Remove whitespaces on save

" SYNTASTIC
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['es6', 'javascript'],
                            \ 'passive_filetypes': ['ruby'] }
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']
map <Leader>C :SyntasticCheck <CR>

" NERDTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>j :NERDTreeToggle<CR>
nmap <leader>, :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.git', '\.sass-cache', '\.swp']
if has("gui_macvim")
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
endif

" NAVIGATION
set showmatch
nnoremap <Leader><Leader> :e#<CR>

" USE ARROWS TO MOVE
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" RELOAD VIMRC
map <leader>s :source ~/.vimrc<CR>

" CONTROL+T
set wildignore+=*.log,*.sql,*.cache,vendor/*,tmp/*,app/assets/images*,public/*,_build/*,deps/*,node_modules/*
noremap <Leader>t :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'

" RAILS
map <leader>a :AV<CR>

" ES6
au BufNewFile,BufRead *.es6 set filetype=javascript

" SWITCH SCHEME
map <Leader>l :colorscheme Monokai<CR>
map <Leader>k :colorscheme PaperColor<CR>


" Fix backspace.
set backspace=indent,eol,start

" AIRLINE SCHEME
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_eighties'
let g:airline#extensions#tabline#enabled = 1
