set nu    " Number lines
set ruler " Show cursor line anc column in status line
syntax enable
set expandtab
set shiftwidth=4
set nowrap
set linebreak
filetype plugin on

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'vim-latex/vim-latex'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Always keep 5 lines from bottom/top
set scrolloff=5


" Search options
set incsearch
set ignorecase
set smartcase
set hlsearch

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :nohlsearch<CR><CR>

" New leader
let mapleader=","
let maplocalleader = ";"

" Shortcuts for buffers and files of fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>

" EasyMotion configuration
let g:EasyMotion_do_mapping = 0 "Disable default mappings
hi link EasyMotionShade  Comment
nmap s <Plug>(easymotion-s2)
nmap <Leader>w <Plug>(easymotion-bd-wl)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader><Leader>w <Plug>(easymotion-w)

" Buffers Install buftabline
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Syntax Highlighting
syntax on
colorscheme onedark

" Startify options
let g:startify_bookmarks = ['~/.config/nvim/init.vim', '~/Dropbox/Thesis']
let g:startify_change_to_dir = 1
let g:startify_relative_path = 1

" Escape terminal key with ESC
:tnoremap <Esc> <C-\><C-n>

" How to disable wrap per file
" Edit  $VIMRUNTIME/ftplugin/filetypename.vim
" In that file write towards the end:setlocal wrap
