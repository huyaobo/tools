set nu
set hls
set is
set ic

if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" easy buffer navigation
" NOTE: if we already map to EXbn,EXbp. skip setting this
if !hasmapto(':EXbn<CR>') && mapcheck('<C-l>','n') == ''
    nnoremap <C-l> :bn<CR>
endif
if !hasmapto(':EXbp<CR>') && mapcheck('<C-h>','n') == ''
    noremap <C-h> :bp<CR>
endif

" set cuc
set cul
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" highlight CursorLine   cterm=NONE ctermbg=DarkBlue ctermfg=green guibg=NONE guifg=NONE
highlight CursorLine   cterm=NONE ctermbg=DarkCyan ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=DarkBlue ctermfg=green guibg=NONE guifg=NONE


"-----------------------------------------------------------------------------------------
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line


" ----------------------custome plugin-----------------------------------
"------------------------airline----------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tagbar#enabled = 1


"----------------------------------------------------------
Plugin 'moll/vim-bbye'
Plugin 'exvim/ex-utility'
Plugin 'exvim/ex-gsearch'



Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDRemoveExtraSpaces = 1
let g:NERDCustomDelimiters = {
            \ 'vimentry': { 'left': '--' },
            \ }
map <unique> <F11> <Plug>NERDCommenterAlignBoth
map <unique> <C-F11> <Plug>NERDCommenterUncomment

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

"Shift ctrl c and v to clipboard
" vmap <S-C-C> "+y
vmap <C-c> "+y
nmap <S-C-V> "+p
