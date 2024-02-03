""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          " 
"          ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗         "
"          ██║   ██║██║████╗ ████║██╔══██╗██╔════╝         "
"          ██║   ██║██║██╔████╔██║██████╔╝██║              " 
"          ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║              " 
"           ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗         "
"            ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝         "
"                                                          " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" check vim-plug available or not if not then install it 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs),'!isdirectory(v:val.dir)')) | PlugInstall --sync | source ~/.vimrc | endif

" load the below listed plug-ins
call plug#begin('~/.vim/pack/myplugins/start')
" minimize the screen for md file editing e.g. :Goyo
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
" fuzzy finder for file search and other operations related to files , e.g. :Ag
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" commenting lines in supported programming languages e.g. gcc or gc
Plug 'tpope/vim-commentary'
" file explorer 
Plug 'preservim/nerdtree'
" icons for other plugins. Note: always load this at last of all other plugins
" Plug 'ryanoasis/vim-devicons'
" useful for bullet points
Plug 'dkarter/bullets.vim'
call plug#end()

" FZF key bindings
nnoremap <C-f> :FZF<CR>
 let g:fzf_action = {
   \ 'ctrl-t': 'tab split',
     \ 'ctrl-i': 'split',
       \ 'ctrl-v': 'vsplit' }

" disable compatibility with vi which can cause unexpected issues
set nocompatible
" this is to just ignore case 
set ignorecase
" smart search when upper case letter used in search
set smartcase
" highlighting syntax in different colors
syntax on 
" showing left side relative line number
set number relativenumber
" This will break line in between whitespaces will not cut the word while
" breaking long line
set linebreak 
" This will not wrap the line to next line if it is longer than width
set nowrap
" Showing possible matches when type in command below
set wildmenu
" set wild menu like a bash completion 
set wildmode=list:longest
" Spell checker for wrong type words
"set spell
" Highlight the search as you type in word
set incsearch
" Use highlighting when doing a search for all matches
" set hlsearch
" Display bottom information panel
set report=0
" setting bottom information window height
set cmdheight=2
" Enable type file detection. Vim will be able to try to detect the type of file in
filetype on
" Enable plugins and load plugin for the detected file type
filetype plugin on
" Load an indent file for the detected file type
filetype indent on
" Highlight cursor line underneath the cursor horizontally.
" set cursorline
" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn
" Set the commands to save in history default number is 20.
set history=100
" Clear status line when vimrc is reloaded
set statusline=
" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side
set statusline+=%=
" Status line right side
set statusline+=\ ASCII:\ %b\ HEX:\ 0x%B\ ROW:\ %l\ COL:\ %c\ PERCENT:\ %p%%
" Show the status on the second to last line
set laststatus=2

" Opening terminal shortcut
nmap <leader>tt :terminal <CR>
vmap <leader>tt :terminal <CR>

" move to start and end of line 
nnoremap L $
nnoremap H ^
vnoremap L $
vnoremap H ^

" cursor block and normal mode 
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" scrolling
nmap <leader>d <C-d>
nmap <leader>u <C-u>
vmap <leader>d <C-d>
vmap <leader>u <C-u>

" system clipboard
vmap <leader>yiw "+yiw
nmap <leader>yiw "+yiw
vmap <leader>y "+y
nmap <leader>y "+y
vmap <leader>y "+yy
nmap <leader>y "+yy
vmap <leader>p "+p
nmap <leader>p "+p
vmap <leader>P "+P
nmap <leader>P "+P
" yank from cursor to end of line
nnoremap Y y$ 

" tab shortcuts
nnoremap  <leader>h :tabprevious<CR>
nnoremap  <leader>l :tabnext<CR>

" moving line up and down  
nnoremap <leader>k :m -2<CR>
inoremap <leader>k <Esc>:m -2<CR>gi
inoremap <leader>j <Esc>:m +1<CR>gi
nnoremap <leader>j :m +1<CR>

" center the cursor during search
nnoremap n nzz
nnoremap N Nzz

" file path autocompletion after slash type
inoremap / /<C-x><C-f>

"--------------------END VIMRC--------------
