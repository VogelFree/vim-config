set nocompatible
filetype off

" PLUGINS:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'           " Vundle Plugin manager
Plugin 'rakr/vim-one' 			" Atom one colorscheme
Plugin 'tpope/vim-surround'		" surround modifier
Plugin 'tpope/vim-commentary'		" comment modifier
Plugin 'christoomey/vim-system-copy'	" copy/paste to/from system clipboard
Plugin 'aklt/plantuml-syntax'           " syntax highlighting and executing for plantuml
Plugin 'metakirby5/codi.vim'            " interactive code execution
Plugin 'rust-lang/rust.vim'             " RUST syntax highlighting
call vundle#end()
filetype plugin indent on

" COLORSCHEME:
set background=dark
colorscheme one
let g:one_allow_italics=1

" SHORTCUTS:
nnoremap <C-F> <ESC>:40vs .<CR>	" open the file browser with ctrl+f
autocmd FileType plantuml nnoremap <F5> <esc>:make<cr><esc>:!inkview %:r.svg&<cr><cr>
autocmd FileType python nnoremap <F5> <esc>:!python %<CR>
autocmd FileType javascript nnoremap <F5> <esc>:!npm start<cr>
autocmd FileType javascript nnoremap <F6> <esc>:!npm test<cr>

"  TEMPLATES:
nnoremap ,testjs :-1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.test.js<CR>	" js test template
nnoremap ,js : -1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.js<CR>          " js template
nnoremap ,testpy :-1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.test.py<CR>  " py test template
nnoremap ,py  : -1read $XDG_CONFIG_HOME/nvim/templates/.skeleton.py<CR>         " py template

" FILE BROWSING:
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4 	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" FINDING FILES:
set path+=** 			" searching in subfolders
set wildmenu			" show all options for completion with <tab>

" COMMON SETTINGS:
set number			" show line numbers
set expandtab			" set spaces instead of tabs
set shiftwidth=2		" 2 spaces shift width
set softtabstop=2
