set number
set relativenumber
set noswapfile
set hlsearch
set ignorecase
set incsearch
set showcmd

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab autoindent

set guifont=consolas:h10
set encoding=utf-8

set relativenumber

execute pathogen#infect()

filetype on
syntax enable
syntax on
colorscheme molokai


let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set matchpairs+=\<:\>
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=bg guifg=lightblue ctermbg=bg ctermfg=lightblue

"let g:syntastic_cpp_compiler_options = ' --std=c++20 -DEBUG -Wall -Wextra -pedantic -std=c++17 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address,undefined -fno-sanitize-recover  -g -fstack-protector -Wno-sign-compare -fno-omit-frame-pointer'
let g:ale_cpp_cc_options = '-std=c++20 -Wall'


"let g:coq_settings = { 'auto_start': 'shut-up' }
            
inoremap {<CR> {<CR>}<C-O>O
inoremap jk <ESC>
inoremap JK <ESC>
nnoremap t 0i//<ESC>$
nnoremap T 0xx$
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <TAB> :NERDTreeToggle<CR>
nmap <silent> <C-C> :silent noh<CR>
nnoremap <C-A> ggVG

autocmd filetype cpp nnoremap <F6> :w <bar> !comp %:r && ./%:r <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !comp %:r && ./%:r < in1.txt<CR>

