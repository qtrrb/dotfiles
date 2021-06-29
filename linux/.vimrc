"setting up vimplug 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"setting up the plugins 
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'gko/vim-coloresque'
Plug 'vim-scripts/AutoComplPop'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set encoding=UTF-8
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap gt :tabp<cr>
noremap gT :tabn<cr>
ca tn tabnew
"NERDTree stuff
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
"set up a colorscheme
set termguicolors
colorscheme nord 
"adding syntax highlighting
if !exists('g:syntax_on')
  syntax enable
endif
set ts=2
set sts=2
set sw=2
set autoindent
set smartindent
set smarttab
set expandtab
let g:python_recommended_style = 0
let g:rust_recommended_style = 0
"adds the ability to delete blank lines with backspaces
set backspace=indent,eol,start
"shows the line number relative to the set line 
set number
set relativenumber
"closes a bunch of stuff automatically like parantheses or curly brackets 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
cabbrev pdf !pdflatex % && xdg-open $(sed 's/.tex/\.pdf/g' <<< %)
"setting up a good bottom terminal 
cabbrev bterm bo term
cabbrev trun bo term python3 %
set termwinsize=15x0
"status line stuff
set statusline=
set laststatus=2
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ normal\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ insert\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ replace\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ visual\ ':''}
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorLine#   " colour
set statusline+=%R " readonly flag
set statusline+=%M " modified [+] flag
set statusline+=\ %t\  " short file name
set statusline+=\ %y\  " file type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}  " file encoding
set statusline+=%= " right align
set statusline+=%#DiffAdd# " colour
set statusline+=\ %3l:%-2c\  " line + column
set statusline+=\ %3p%%\  " percentage
