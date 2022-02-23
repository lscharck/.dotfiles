set nocompatible
set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath=&runtimepath
set relativenumber
set number
set encoding=utf-8
set autowrite
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set matchpairs+=<:>
set clipboard=unnamed
set noswapfile
set statusline=%f\ %l,%c
set statusline+=%#warningmsg#
set statusline+=%*
set cmdheight=1
set signcolumn=auto
set mouse=a
set path+=**
set wildmenu
set history=1000
set viewoptions=folds,options,cursor,unix,slash
set modelines=0
set ruler
set visualbell
set scrolloff=3
set backspace=indent,eol,start
set incsearch
set scrolloff=8
set nohlsearch
set nowrap
set noshowmode
set termguicolors
set viminfo+=n~/.config/.nvim/tmpfiles/viminfo
set omnifunc=syntaxcomplete#Complete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
set colorcolumn+=80
set spell

syntax enable
filetype plugin on
highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set tabstop=4
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set softtabstop=4
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set shiftwidth=4
au BufNewFile,BufRead *.py,*.pyw,*,c,.*h,*.m,*.cpp set textwidth=80
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set smartindent
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set expandtab
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set autoindent
au BufNewFile,BufRead *.py,*.pyw,*.c,.*h,*.m,*.cpp set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.m.*.cpp match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

let g:netrw_banner = 0
let g:netwr_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" rainbow config
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" themes
" autocmd vimenter * ++nested colorscheme gruvbox
packadd! onedark.vim
let g:onedark_hide_endofbuffer=1
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
colorscheme onedark

map <space><space> :Lex
