set nocompatible
filetype plugin on
sy on
colo desert
se is nu ic cul cin sw=4 ts=4

nmap <SPACE> <LEADER>
vmap Y "+y
vmap / :'<,'>normal I// <CR>
vmap ? :'<,'>normal ^dw<CR>
nmap <LEADER>p "+p
nmap <LEADER>y :%normal "+y
map <LEADER>m :e $MYVIMRC<CR>
map <LEADER>r :w<CR>:source $MYVIMRC<CR>
map <LEADER>y :%y+<CR>
map <LEADER>d :%d<CR>
map <LEADER>s :%normal==<CR>

map <LEADER>cj :w<CR>:!javac %&&java %<<CR>
map <LEADER>cJ :w<CR>:!javac %<CR>
map <LEADER>cc :w<CR>:!g++ % -g -o %<; time ./%<<CR>
map <LEADER>cp :w<CR>:!python %<CR>

imap { {<CR>}<C-o>O
imap <C-l> <C-{>kJJs

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" UltiSnips
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Vimwiki
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/wiki/'},
			\ {'path': '~/vimwiki/notes/'}]
let g:vimwiki_folding = 'expr'

call plug#end()
