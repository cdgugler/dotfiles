set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/SyntaxComplete'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'flazz/vim-colorschemes'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/zencoding-vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-surround'

set autoindent
set cindent
set t_Co=256
set wildmenu
set number
set hidden
set ic nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set smartcase
set splitbelow
set splitright
syntax enable
color golden
hi Normal ctermbg=None

let mapleader="\\"
" Remove YCM detailed diagnostics mapping
let g:ycm_key_detailed_diagnostics = ''
map <leader>t :tabnew<cr>
"map <leader>cs <esc>I/**<esc>
"map <leader>ce <esc>A**/<esc>
map <leader>fh :set ft=html<cr>
map <leader>fj :set ft=javascript<cr>
map <leader>fp :set ft=php<cr>
cmap w!! %!sudo tee > /dev/null %
map <Leader>\ :bn<cr>
map <Leader>\| :bp<cr>
map <Leader>e :e.<cr>
map <Leader><Space> :TMiniBufExplorer<CR>
map <Leader>d :bd<CR>
map <Leader>c A;<esc>O
map <Leader>n :NERDTreeToggle<CR>
function SwitchBuffer()
    b#
endfunction
nmap <Tab> :call SwitchBuffer()<CR>
" :nnoremap <Leader><Space> :buffers<CR>:buffer<Space>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:html_exclude_tags = ['html', 'style', 'body']
let g:miniBufExplSplitBelow = 0

filetype plugin indent on     " required!
