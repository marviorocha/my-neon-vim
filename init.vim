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
Plug 'honza/vim-snippets'
call plug#end()


colorscheme gruvbox
set background=dark
set inccommand=split
set hidden
set number
set mouse=a
set relativenumber
set autoindent
set smartindent
set smartcase
set cmdheight=2
let g:deoplete#enable_at_startup = 1
let mapleader="\<space>"
nnoremap <leader>nvim :vsplit ~/.config/nvim/init.vim<cr> 
nnoremap <leader>co :source ~/.config/nvim/init.vim<cr>
nnoremap <c-z> :u<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-p> :Files<cr>
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
