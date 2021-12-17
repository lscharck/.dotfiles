call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'

call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

lua << EOF
require('lspconfig').ccls.setup{}
require('lspconfig').pylsp.setup{}
EOF
