execute pathogen#infect()

" Interactions

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Don't auto-indent when pasting from external applications
set paste
" Use unnamed register with clipboard
set clipboard=unnamed
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Visual decorations

" Color scheme
set t_Co=256
set background=dark
colorscheme base16-ocean

" Show file title in terminal tab
set title
" Show line numbers
set number
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
  set colorcolumn=81
endif
" Highlight current line
set cursorline
" Keep cursor centered vertically
set scrolloff=9999
" Don’t keep results highlighted after searching
set nohlsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase


" Keyboard shortcuts

" Map ; to :
nmap ; :
" Map leader to , instead of \
let mapleader = " "

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Tab mappings
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>te :tabedit
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>tf :tabfirst<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>tm :tabmove
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>
