 "All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"desabilitar mouse
set mouse= 

"desabilitar backups
set nobackup
set noswapfile
set nowritebackup


"clipboard do sistema
set clipboard=unnamed

"tabs por espaços
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

"identação
filetype plugin indent on
set autoindent
set smartindent

"Régua, quebra e número de linhas
set number
"set ruler

"busca
set hlsearch
set ignorecase
set incsearch

"Fonte e janela
set guifont=consolas:h10
set encoding=utf-8

set relativenumber

execute pathogen#infect()

filetype on
syntax enable
syntax on
"set t_Co=256
"let g:solarized_termcolors=256
set background=dark
colorscheme molokai


let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"autocmd vimenter * ++nested colorscheme gruvbox

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"fix matchpar
set showmatch                  " Briefly jump to a paren once it's balanced
set matchpairs+=\<:\>
" With `Cursor guibg=fg guifg=bg` + default MatchParen styling, it makes the
" cursor seem like it has actually jumped to the patching pair. This instead
" makes the MatchParen style preserve the background color, so that the
" Cursor can flip it appropriately.
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=bg guifg=lightblue ctermbg=bg ctermfg=lightblue

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
            
inoremap {<CR> {<CR>}<C-O>O
inoremap jk <ESC>
inoremap JK <ESC>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F6> :NERDTreeToggle<CR>
nmap <silent> <C-C> :silent noh<CR>

autocmd filetype cpp nnoremap <F5> :w <bar> !g++ % -o %:r && ./%:r <CR>
