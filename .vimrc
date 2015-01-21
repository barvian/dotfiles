execute pathogen#infect()

" Interactions

" Don't auto-indent when pasting from external applications
set paste
" Use unnamed register with clipboard
set clipboard=unnamed


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
" Don’t keep results highlighted after searching
set nohlsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase


" Keyboard shortcuts

" Tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
