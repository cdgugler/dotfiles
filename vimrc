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
Bundle 'mattn/emmet-vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-surround'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'joonty/vdebug.git'
Bundle 'marijnh/tern_for_vim'

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
set backupdir=~/.backups,/tmp
set directory=~/.backups,/tmp
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
map <Leader><Space> :MBEToggle<CR>
map <Leader>d :bd<CR>
map <Leader>c A;<esc>O
map <Leader>n :NERDTreeToggle<CR>
map <Leader>qq :q!<cr>
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

set backspace=2
let delimitMate_expand_cr = 1

filetype plugin indent on     " required!
