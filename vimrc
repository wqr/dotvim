" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

let $GOPATH = $HOME . '/go'

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Shougo/neocomplete.vim'
Plug 'msanders/snipmate.vim'
Plug 'leafgarland/typescript-vim'
Plug 'chase/vim-ansible-yaml'
Plug 'Lokaltog/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'
Plug 'dhruvasagar/vim-table-mode'

Plug 'jnurmine/Zenburn'
Plug 'jellybeans.vim'
call plug#end()

filetype plugin indent on    " required

set nocp sta noet ai sm ru wmnu ek hid sc noeb nosol hls aw
set bs=2 shm=at ts=8 sw=8 sts=8 ls=2 wim=full go=aegiLt kmp=russian-jcukenwin imi=0 ims=0 penc=cp1251 pmbcs=utf-8 t_Co=256
set gfn=Hack
set rtp^=~/.vim/bundle/ctrlp.vim
set comments=b:#,:%,n:>
"set list listchars=tab:»·,trail:·
set viminfo=%,'50,\"100,:100,n~/.viminfo

syntax on

if has('gui_running')
    set background=dark
    colorscheme codeschool
else
    set background=dark
endif

let g:neocomplete#enable_at_startup = 1

map ,c "0yw
map ,v viw"0p
map <M-Right> :bn<CR>
map <M-Left>  :bp<CR>

"setlocal spell spelllang=ru_yo,en_us
"set nospell

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
