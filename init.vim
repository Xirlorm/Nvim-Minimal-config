set nu
set ruler
set nowrap
set mouse=a
set autoindent
set cursorline
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2 
set redrawtime=10000
set undofile
set undodir=~/.config/undo
"set spell
let g:netrw_browse_split=4

call plug#begin()
" Coc autocompletion
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Emmet html extension
Plug 'mattn/emmet-vim'
" Night fox colorscheme
Plug 'EdenEast/nightfox.nvim'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Linting
Plug 'dense-analysis/ale'
" Autocompletion minimal
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'
" Vim multiselector
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Nerd tree
"Plug 'scrooloose/nerdtree'
" Iconsduskddusk
"Plug 'ryanoasis/vim-devicons'
call plug#end()

"Set Colorscheme
colorscheme duskfox
"Turn syntax highlighting on
syntax on

"Start Prettier extension
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'text':1, 'markdown':1, '*':1}

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
nnoremap <esc> :noh<return><esc>

" Auto rust code formatter
let g:rustfmt_autosave = 1
