call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc-sources'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'flrnprz/plastic.vim'
Plug 'Yggdroot/indentLine'
Plug 'honza/vim-snippets'
Plug 'vim-ruby/vim-ruby'
Plug 'joshdick/onedark.vim'
Plug 'carakan/new-railscasts-theme'
Plug 'chiedo/vim-px-to-em'
Plug '907th/vim-auto-save'
call plug#end()

" ================= My personal =====================

colorscheme onedark 
syntax on
set background=dark
set inccommand=split
set hidden
set number
set mouse=a
set relativenumber
set smartcase
set cmdheight=2

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set linebreak    "Wrap lines at convenient points

let g:airline_theme='onedark'
let g:deoplete#enable_at_startup = 1
let mapleader="\<space>"
nnoremap <leader>nvim :vsplit ~/.config/nvim/init.vim<cr> 
nnoremap <leader>co :source ~/.config/nvim/init.vim<cr>
nnoremap <c-z> :u<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-p> :Files<cr>
nnoremap <c-del> :call delete(expand('%'))<cr> 

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <c-\> :NERDTreeToggle<cr>
autocmd vimenter * NERDTree







