let $GOPATH = '/home/i/go'

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'fatih/vim-go'
Plugin 'terryma/vim-multiple-cursors'

"Plugin 'https://bitbucket.org/kisom/eink.vim'
"Plugin 'robertmeta/nofrils'
Plugin 'jnurmine/Zenburn'
Plugin 'jellybeans.vim'

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


set nocp sta noet ai sm ru wmnu ek hid sc noeb nosol hls
set bs=2 shm=at ts=8 sw=8 sts=8 ls=2 wim=full gfn=Hack go=aegiLt kmp=russian-jcukenwin imi=0 ims=0 penc=cp1251 pmbcs=utf-8 t_Co=256
set rtp^=~/.vim/bundle/ctrlp.vim
set comments=b:#,:%,n:>
"set list listchars=tab:»·,trail:·
set viminfo=%,'50,\"100,:100,n~/.viminfo

syntax on

if has('gui_running')
    set background=dark
    colorscheme codeschool
els
    set background=dark
endif

let g:neocomplete#enable_at_startup = 1

map ,c "0yw
map ,v viw"0p
map <M-Right> :bn<CR>
map <M-Left>  :bp<CR>

setlocal spell spelllang=ru_yo,en_us
set nospell

"set relativenumber
"set number

map <F3> qq
map <F4> @q

""EasyMotion
"let g:EasyMotion_do_mapping = 0
"nmap <Leader>s <Plug>(easymotion-s)
""nmap f <Plug>(easymotion-s)
"let g:EasyMotion_smartcase = 1
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
"let g:EasyMotion_startofline = 0

"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" Vim-GO
let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Multiple cursor
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
