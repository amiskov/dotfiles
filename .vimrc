set number
set relativenumber
set nocompatible
syntax on
set shiftwidth=4
set scrolloff=10
set wrap
set history=1000
set showmode
set showmatch
set tw=84
set ts=4
set sts=4
set term=xterm-256color
" set spell spelllang=en_us,ru_ru
set foldcolumn=1
set statusline=...[%{&fo}]...
:set guifont=Iosevka:h18
set laststatus=2 "this setting is for lightline plugin

nnoremap <SPACE> <Nop>
let mapleader = ","

call plug#begin()
    Plug 'preservim/NERDTree'
    Plug 'itchyny/lightline.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'junegunn/goyo.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'owickstrom/vim-colors-paramount'

	"FZF needs both lines
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

" Autocomplete
" Use <Enter> to apply selected suggest from autocomplete.
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" Searching, FZF
set ignorecase
set smartcase
set hlsearch
nmap <leader>ff :FZF<cr>
nmap <leader>fb :Buffers<cr>

" .vimrc
nnoremap gev :e $MYVIMRC<CR> " open .vimrc
" nnoremap gsv :so $MYVIMRC<CR>

" Automatically reload .vimrc on save
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

" end .vimrc

" NERDTree setup
nmap <leader>ne :NERDTreeToggle<cr>
" map <silent> <C-D> :NERDTreeToggle<CR>

let g:rainbow_active=1 " rainbow plugin activate globally
":Goyo  | Goyo plugin allows you to enter distraction free writing mode
":FZF | activate fuzzyfinder in vim



" COC settings -----------------------------------
let g:coc_global_extensions = [
      \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]

set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
         execute 'h '.expand('<cword>')
    else
         call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
" COC settings finish ------------------------------


colorscheme paramount

