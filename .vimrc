"Plugin Manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'yggdroot/indentline'
call vundle#end()
filetype plugin indent on


"Misc
let mapleader="\<Space>"
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
set noswapfile
"spaces and tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
"movement
nnoremap B ^
nnoremap E $
nmap <esc>d 9j
nmap <esc>u 9k
nnoremap <esc>-j <C-W><C-J>
nnoremap <esc>-k <C-W><C-K>
nnoremap <esc>-l <C-W><C-L>
nnoremap <esc>-h <C-W><C-H>
nmap J :tabp<CR>
nmap K :tabn<CR>
vnoremap < <gv
vnoremap > >gv
"copy paste
set pastetoggle=<F2>
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P


"User Interface
"solarized
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")
hi VertSplit ctermfg=0
hi VertSplit ctermbg=0
"vim airline/themes/devicons
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='solarized'
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
"indentline
let g:indentLine_char = '┆'


"File Navigation
"nerdtree
map <leader>n :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"ctrlp
nnoremap <Leader>f :CtrlP<cr>
nnoremap <Leader>o :CtrlPMRU<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:ctrlp_working_path_mode = ''


"Programming
set cursorline
set colorcolumn=80
"fugitive
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gl :Glog<cr>
"tagbar
nmap <leader>t :TagbarToggle<cr>
"vimux/tmux commandline
map <leader>vp :VimuxPromptCommand<cr>
map <leader>vl :VimuxRunLastCommand<cr>
