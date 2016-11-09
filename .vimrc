execute pathogen#infect() 
call pathogen#helptags() " generate helptags for everything in ‘runtimepath’

syntax on	" highlight syntax
filetype plugin indent on
set nocompatible

let g:solarized_termcolors=256
"set background=light
set background=dark
colorscheme solarized

set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " need this to set for autoindent to work

set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to.
set showmatch       " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" nerdtree settings
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>

" airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" tagbar settings
nnoremap <F8> :TagbarToggle<CR>


" Change leader key from \ to , - easier to type
let mapleader = "," 

" switch between tabs
nnoremap th :tabp<CR>
nnoremap tl :tabn<CR>

" Fast saving
map <Leader>w :w<CR>
map <Leader>ww :w!<CR>

" enable neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1


" vim-go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = "gofmt"
let g:go_fmt_command = "goimports"



" vim-go mappings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>i <Plug>(go-install)
au FileType go nmap <leader>c <Plug>(go-coverage)

" open definition/declaration
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>d <Plug>(go-def-tab)

" open documentation
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>g <Plug>(go-doc-tab)

" Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor with <leader>i (useful if you have disabled auto showing type info via g:go_auto_type_info)
au FileType go nmap <Leader>i <Plug>(go-info)
