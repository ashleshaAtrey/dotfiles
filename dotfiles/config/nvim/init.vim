set shell=bash

" ==== Comment out the line below if your terminal does not support true color
set termguicolors

set rtp+=~/.config/nvim/colors/dracula

set hidden

set nocompatible
filetype on
filetype plugin on
filetype plugin indent on
set backspace=indent,eol,start

set omnifunc=syntaxcomplete#Complete

set encoding=utf-8
set fileencoding=utf-8

set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

set nowrap
set textwidth=0
set wrapmargin=0

set number
set cursorline

set showmatch
set incsearch
set hlsearch

set noswapfile
set nobackup
set nowritebackup

set mouse=a

noremap <Leader>y "+y
noremap <Leader>p "+p

set colorcolumn=80,120

set list
set listchars=tab:>-,trail:.

" ==== specific file type settings =============================================
autocmd FileType go set noexpandtab shiftwidth=8 tabstop=8 softtabstop=0
au FileType go nmap <leader>g <Plug>(go-def-split)
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType vue set expandtab shiftwidth=4 tabstop=8 softtabstop=0

" ==== plugin settings =========================================================

" dracula settings
:syntax on
colorscheme dracula
let g:dracula_bold=1
let g:dracula_italic=1
let g:dracula_underline=1
let g:dracula_undercurl=1
let g:dracula_inverse=1
let g:dracula_colorterm=1

" color settings after dracula
hi! Normal ctermbg=NONE
hi! NonText ctermbg=NONE
hi! Normal guibg=NONE
hi! NonText guibg=NONE

" coc settings
let g:coc_node_path='/usr/bin/node'

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> U :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" autosave settings
let g:auto_save=1
let g:auto_save_silent=1
let g:auto_save_write_all_buffers=1

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_def_mapping_enabled=0

" vim-airline
let g:airline_powerline_fonts = 1
