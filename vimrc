set nocompatible
filetype off
" 
set rtp+=~/.vim/bundle/Vundle
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
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'joonty/vdebug.git'
Bundle 'marijnh/tern_for_vim'
Bundle 'vim-scripts/CSApprox'
Bundle 'xsbeats/vim-blade'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'joonty/vim-phpunitqf.git'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/prefixer.vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'Shutnik/jshint2.vim'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mxw/vim-jsx.git'

set autoindent
set cindent
set wildmenu
set number
set hidden
set ic nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ignorecase
set smartcase
set splitbelow
set splitright
set backupdir=~/.backups,/tmp
set directory=~/.backups,/tmp
syntax enable
color adrian
hi Normal ctermbg=None
 
let mapleader="\\"
" Remove YCM detailed diagnostics mapping
" let g:ycm_key_detailed_diagnostics = ''
set pastetoggle=<leader>p
map <leader>t :tabnew<cr>
map <leader>fh :set ft=html<cr>
map <leader>fj :set ft=javascript<cr>
map <leader>fp :set ft=php<cr>
cmap w!! %!sudo tee > /dev/null %
map <Leader>\ :bn<cr>
map <Leader>\| :bp<cr>
map <Leader>e :e.<cr>
map <Leader><Space> :MBEToggle<CR>
map <Leader>d :BD<CR>
map <Leader>c A;<esc>O
map <Leader>n :NERDTreeToggle<CR>
map <Leader>qq :q!<cr>
map <Leader>y :w !pbcopy<CR><CR>
map <Leader>ca :!caniuse <C-r><C-w><CR>
map <Leader>j :%!python -m json.tool<CR>
map <C-\> :bn<cr>
map <BS> :bp<cr>

function SwitchBuffer()
    b#
endfunction
nmap <Tab> :call SwitchBuffer()<CR>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:html_exclude_tags = ['html', 'style', 'body']
let g:airline#extensions#tabline#enabled = 1

set backspace=2
let delimitMate_expand_cr = 1
let delimitMate_matchpairs = "(:),[:],{:}"

" let g:UltiSnipsSnippetsDir = "~/.vim/snippets/"
" let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'snippets']

let g:indentLine_color_term = 15

" for writing
func! WordProcessorMode()
    setlocal formatoptions=1
    setlocal noexpandtab
    map j gj
    map k gk
    setlocal spell spelllang=en_us
    set complete+=s
    set formatprg=par
    setlocal wrap
    setlocal linebreak
endfu
com! WP call WordProcessorMode()

" to remove background after CSApprox runs
func! FixBackground()
    hi Normal ctermbg=NONE
    hi Comment ctermbg=NONE
    hi Constant ctermbg=NONE
    hi Special ctermbg=NONE
    hi Identifier ctermbg=NONE
    hi Statement ctermbg=NONE
    hi PreProc ctermbg=NONE
    hi Type ctermbg=NONE
    hi Underlined ctermbg=NONE
    hi Todo ctermbg=NONE
    hi String ctermbg=NONE
    hi Function ctermbg=NONE
    hi Conditional ctermbg=NONE
    hi Repeat ctermbg=NONE
    hi Operator ctermbg=NONE
    hi Structure ctermbg=NONE
    hi NonText ctermbg=NONE
    hi Delimiter ctermbg=NONE
endfu
com! FixBG call FixBackground()
" run FixBG after vim has done all the startup stuff
autocmd VimEnter * FixBG

filetype plugin indent on     " required!
let g:ycm_seed_identifiers_with_syntax = 0
set omnifunc=syntaxcomplete#Complete

let g:ctrlp_working_path_mode = 'ra'

" The Silver Searcher
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    set grepprg=ag\ --nogroup\ --nocolor
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap K :silent grep! "\b<C-R><C-W>\b"<CR>:cw<CR>:redr!<CR>
    nnoremap ff :Ag<SPACE>
    vnoremap ff y:Ag<SPACE><C-R>"
endif

let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'line', 'mixed']

set iskeyword+=-

augroup ProjectSetup
  au BufRead,BufEnter /Users/corygugler/www/jpm/* set tabstop=4 shiftwidth=4 softtabstop=4
augroup END
