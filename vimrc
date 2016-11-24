set nocompatible
set background=dark
syntax on
colorscheme solarized

map <ScrollWheelUp> <C-Y><C-Y>
map <ScrollWheelDown> <C-E><C-E><C-E><C-E>

filetype off

set shell=bash
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'ternjs/tern_for_vim'

nnoremap - :TernRefs<CR>
nnoremap _ :TernRename<CR>

Plugin 'AndrewRadev/linediff.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
" fugitive lets you execute git commands from with vim, ex: ':Gstatus'
" Bundle 'tpope/vim-fugitive'
" delimitMate does automatic closing of quotes, brackets, etc. and other stuff
" Bundle 'Raimondi/delimitMate'
" supertab lets you use tab to do auto-completion
Bundle 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'nvie/vim-flake8'
" tagbar shows a bar with all tags in the doc, not working for me
Bundle 'majutsushi/tagbar'
" UltiSnips lets you insert code snippets
" Bundle 'SirVer/UltiSnips'
" Bundle 'honza/vim-snippets'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-surround'
" Bundle 'scrooloose/nerdcommenter'

" endwise adds missing end stuff, like 'end if'"
" Bundle 'tpope/vim-endwise' 
" Bundle 'sjl/gundo.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
" Bundle 'tristen/vim-sparkup'
Bundle 'kchmck/vim-coffee-script'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'uarun/vim-protobuf'
Bundle 'vim-syntastic/syntastic'
" Bundle 'dag/vim-fish'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-markdown'
Bundle 'jwhitley/vim-literate-coffeescript'
Bundle 'groenewege/vim-less'
" Plugin 'szw/vim-tags'
" Plugin 'vim-scripts/taglist.vim'
" Plugin 'powerline/powerline'
" Plugin 'bling/vim-airline' " Displays info about what function block you're
" in, disabled because it can really hurt vim performance
" Plugin 'szw/vim-tags'
" Bundle '907th/vim-auto-save'
Plugin 'tpope/vim-dispatch'

" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1  " do not display the auto-save notification
" let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:ctrlp_map = '<Leader>t'
let g:ctrlp_custom_ignore = {
      \ 'file': '\v\.(aux|o|pyc)',
      \ 'dir': '\v[\/](node_modules|bower_components)',
 \ }
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
noremap <2-LeftMouse> *
nnoremap <leader>4 :set shiftwidth=4<cr>:set tabstop=4<cr>
nnoremap <leader>2 :set shiftwidth=2<cr>:set tabstop=2<cr>
nnoremap <leader>p oimport ipdb; ipdb.set_trace()<esc>j^

set backupdir=/var/tmp,/tmp     "Put vim backup and swap files in temp location
set directory=/var/tmp,/tmp

set esckeys
set hlsearch         " highlights all searched items"
set shiftwidth=2
set tabstop=2
set expandtab
set ruler            " displays cursor location
set backspace=2
set autoindent
set smartindent
set showmatch        " shows matching braces
set virtualedit=all  " changes how visual block highlights space w/o text in it
set incsearch        " incrementally searches as you type, as opposed to waiting until you push enter
set cursorline
set cursorcolumn
set ignorecase
set smartcase
set undofile
set undodir=/Users/alexlong/.vimundo/
set gfn=Monospace\ 9 " sets font

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

"call togglebg#map("<F5>")
let g:solarized_termtrans=1

" map <F4> :TagbarToggle<CR>

autocmd FileType tex set wrap|set textwidth=65
autocmd FileType markdown set wrap|set textwidth=65|set shiftwidth=4|set tabstop=2
autocmd FileType config setf dosini
au BufNewFile,BufRead *.txt set filetype=markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.conf set filetype=config

au BufNewFile,BufRead *.R set filetype=r
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let python_highlight_all=1

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:sparkupExecuteMapping="<C-h>"

:command Markdown ! markdown % > %:r.html

" Match ending whitespace
" autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
" autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
" highlight EOLWS ctermbg=red guibg=red

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore=E111'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"Fish
" autocmd FileType fish compiler fish
" autocmd FileType fish setlocal textwidth=79
" autocmd FileType fish setlocal foldmethod=expr

filetype off
filetype plugin on
filetype indent plugin on


hi normal ctermfg=12 "sets the main text to brblue properly

set number
set relativenumber

set foldmethod=indent
set foldlevelstart=99
set mouse=a
set hidden

" If the current buffer has never been saved, it will have no name,
" " call the file browser to save it, otherwise just save it.

command -nargs=0 -bar Update if &modified 
    \| if empty(bufname('%'))
    \|  browse confirm write
    \| else
    \|  confirm write
    \| endif
    \|endif

nnoremap <silent> <C-S> :<C-u>Update<CR>
" nnoremap <F5> :GundoToggle<CR>
"map <Enter> o<ESC>
"map <Space> O<ESC>j
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>
nnoremap <C-q> :q<cr>

"nnoremap <C-a> yiw :Start luke add <C-r>"<CR>
"nnoremap <C-x> yiw :Start luke addAndAttach <C-r>"<CR>
inoremap <F10> <esc>:w rerunplease.tmp<CR>:w<cr>a
nnoremap <F10> :w rerunplease.tmp<CR>:w<cr>

nnoremap g: g;
nnoremap <F9> ebye /<C-R>"<CR>
nnoremap <F8> ebye ?<C-R>"<CR>n
nnoremap <F4> :Gstatus<CR>
nnoremap <Space> <C-f>
nnoremap <C-Space> <C-b>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap m/ :nohl<CR>

" Shift should be for less frequently used characters!
" inoremap 9 (
" inoremap ( 9
" inoremap 0 )
" inoremap ) 0
"
" nnoremap ' "
" nnoremap " '
" inoremap ' "
" inoremap " '
"
" nnoremap _ -
" nnoremap - _
" inoremap _ -
" inoremap - _
"
" inoremap ; :
" inoremap : ;
nnoremap ; :
nnoremap : ;

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>  
nnoremap <leader>sv :source $MYVIMRC<CR> 

" Toggle diffmode
" Set up a keymapping from <Leader>df to a function call.
" (Note the function doesn't need to be defined beforehand.)
" Run this mapping silently. That is, when I call this mapping,
" don't bother showing "call DiffToggle()" on the command line.
nnoremap <silent> <Leader>df :call DiffToggle()<CR>

" Define a function called DiffToggle.
" The ! overwrites any existing definition by this name.
function! DiffToggle()
    " Test the setting 'diff', to see if it's on or off.
    " (Any :set option can be tested with &name.
    " See :help expr-option.)
    if &diff
        windo diffoff
    else
        windo diffthis
    endif
:endfunction

nnoremap <C-n> :set relativenumber!<cr>
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap ] :Ag<SPACE>

" Console log from insert mode; Puts focus inside parentheses
imap cll console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll"<Esc>pa:"<Esc>ocll<Esc>p


