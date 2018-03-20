set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
set shell=/bin/bash

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'vim-scripts/indentpython.vim'

" Enable folding
set foldmethod=indent
set foldlevel=99
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'cscope_plus.vim'
Plugin 'cscope-wrapper'
Plugin 'cecscope'
Plugin 'autoload_cscope.vim'
Plugin 'cscope_macros.vim'
Plugin 'The-NERD-tree'
Plugin 'ide'
Plugin 'taglist.vim'
Plugin 'taglist-plus'
Plugin 'CCTree'
Plugin 'Command-T'
Plugin 'tcommand'
Plugin 'tlib'
Plugin 'ack.vim'
Plugin 'LustyExplorer'
Plugin 'pathogen.vim'
Plugin 'DfrankUtil'
Plugin 'vimprj'
execute pathogen#infect()
filetype plugin indent on
Plugin 'ctrlp.vim'
nnoremap <F5> :NERDTreeToggle<CR>
set tags=~/workspace/hase/tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-[> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
source /home/avawal/.cscope_maps.vim
" setlocal noautoindent
" setlocal nocindent
" setlocal nosmartindent
" setlocal indentexpr=
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set hidden
"autocmd VimEnter * NERDTree
