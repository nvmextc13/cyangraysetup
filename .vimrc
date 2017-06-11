set nocompatible              " be iMproved, required
set hidden
filetype off                  " required

set number
set ruler
hi LineNr ctermbg=NONE ctermfg=244 guibg=NONE guifg=244
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE guibg=234 guifg=NONE
hi CursorColumn cterm=NONE ctermbg=234 ctermfg=NONE guibg=234 guifg=NONE
hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=032 guibg=234 guifg=032
set cursorline
set cursorcolumn

set encoding=utf8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1 "required
let g:airline#extensions#tabline#enabled = 1

"nerdtree and colors
Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let NERDTreeShowHidden=1 "shows hidden files default, shift+i to toggle
hi Directory guifg=032 ctermfg=032 ctermbg=NONE "foldercolors
hi NERDTreeOpenable ctermfg=001 "arrow colors
hi VertSplit cterm=NONE ctermbg=234 ctermfg=001 "vert split colors
hi StatusLineNC cterm=NONE ctermbg=234 ctermfg=001 "hor split colors

" git tools
Plugin 'tpope/vim-fugitive'

" instant comments
Plugin 'tomtom/tcomment_vim'

" fuzzy path searching
Plugin 'git://git.wincent.com/command-t.git'

" full path fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ctrlspace/vim-ctrlspace'

" jump around documents
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>' 

" highlight searching, for easymotion as well
Plugin 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
Plugin 'haya14busa/incsearch-easymotion.vim'
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

" prereq for FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'

"load devicons last
Plugin 'ryanoasis/vim-devicons'
let g:webdevicons_enable_airline_tabline = 1 " adding to vim-airline's tabline 
let g:webdevicons_enable_airline_statusline = 1 " adding to vim-airline's statusline 

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" remapping
nnoremap <Tab> <C-W>w 
nnoremap <S-Tab> :bn<CR> 
nnoremap <F5> :buffers<CR>:buffer<Space> "F5 to select from buffers
" resize horzontal split window
nnoremap <C-S-Up> <C-W>-<C-W>-
nnoremap <C-S-Down> <C-W>+<C-W>+
" resize vertical split window
nnoremap <C-S-Right> <C-W>><C-W>>
nnoremap <C-S-Left> <C-W><<C-W><

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabnew<CR>

"open vim with nerdtree running
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"ctrl+n will toggle nerdtree
map <C-n> :NERDTreeToggle<CR> 