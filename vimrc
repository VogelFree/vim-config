set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'rakr/vim-one'
Plugin 'autozimu/LanguageClient-neovim'
Plugin 'ionide/Ionide-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mbbill/undotree'
Plugin 'vim-airline/vim-airline'

call vundle#end()

" COMMON SETTINGS:
filetype plugin on
filetype indent on

syntax on
set number
set expandtab
set shiftwidth=2
set tabstop=2 softtabstop=2
set foldmethod=syntax
set nofoldenable
set directory^=~/.vim/tmp//
set autochdir
set noerrorbells
set undodir=~/.vim/undodir
set undofile
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" COLORSCHEME
set background=dark
colorscheme one
let g:one_allow_italics=1

" FILE BROWSING
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" SHORTCUTS
let mapleader = " "

nnoremap <C-F> <ESC>:40vs .<CR>

nnoremap <leader><Tab> <ESC>:tabnext<Enter>
nnoremap <C-Tab> <ESC>:tabprev<Enter>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <F5> <ESC>:!dotnet fsi %:p<Enter>

" FILE SYNTAX
autocmd BufNewFile,BufRead [Vv]agrantfile set syntax=ruby

" Windows features
if has('win32')
  set shell=powershell
  set shellcmdflag=-command
endif
