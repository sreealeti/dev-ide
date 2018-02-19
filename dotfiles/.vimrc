" LOADING
execute pathogen#infect()

" remove delays
set timeoutlen=300 ttimeoutlen=0

" LEADER
let mapleader=" "

" FILE TYPES
filetype on
filetype plugin on

" THEME & LAYOUT
colorscheme gruvbox
set guifont=Menlo\ Regular:h18
set colorcolumn=90
set number
syntax on

" Fix backspace.
set backspace=indent,eol,start

" AIRLINE SCHEME
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_eighties'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

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

" WINDOWS
map <leader>v :vsplit<CR>
map <leader>h :sp<CR>

" FOLDINGS
set foldmethod=syntax
set foldlevelstart=20

autocmd BufWritePre * :%s/\s\+$//e " Remove whitespaces on save

"GITGUTTER
"disable gitgutter
let g:gitgutter_enabled = 0
let g:gitgutter_grep_command = 'grep -e'
set signcolumn=yes

" YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

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
nmap <leader>, :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
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

" JSX
let g:jsx_ext_required=0
