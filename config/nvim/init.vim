" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

call plug#begin()
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'LucHermitte/lh-brackets'
Plug 'LucHermitte/lh-vim-lib'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
call plug#end()

map         <C-Right>       :tabn<Cr>
map!        <C-Right>       <Esc>:tabn<Cr>a
map         <C-Left>        :tabp<Cr>
map!        <C-Left>        <Esc>:tabp<Cr>a
map         <C-S-Right>     :tabm +1<Cr>
map!        <C-S-Right>     <Esc>:tabm +1<Cr>a
map         <C-S-Left>      :tabm -1<Cr>
map!        <C-S-Left>      <Esc>:tabm -1<Cr>a

nmap        <A-Up>          :wincmd k<Cr>
nmap        <A-Down>        :wincmd j<Cr>
nmap        <A-Left>        :wincmd h<Cr>
nmap        <A-Right>       :wincmd l<Cr>

map         <C-s>           :w<Cr>
map!        <C-s>           <Esc>:w<Cr>a
map         <C-z>           :u<Cr>
map!        <C-z>           <Esc>:u<Cr>a
map!        <C-r>           <Esc><C-r>a
map         <C-a>           ggVG
map!        <C-a>           <Esc>ggVG
vmap        <C-c>           "+y<Cr>
vmap        <C-x>           "+d<Cr>
map         <C-v>           "+p<Right>
map!        <C-v>           <Esc>"+pa<Right>
map         <Bs>            <del>
tmap        <Bs>            <C-u>

map         <C-S-Up>        ddkP
map!        <C-S-Up>        <Esc>ddkPa
map         <C-S-Down>      ddp
map!        <C-S-Down>      <Esc>ddpa

map         <F11>           <Esc>:-tab split<Cr>:te compile % %:r.in %:r.out %:r.err<Cr>i
map!        <F11>           <Esc>:-tab split<Cr>:te compile % %:r.in %:r.out %:r.err<Cr>i
map         <F10>           <Esc>:-tab split<Cr>:te compile %<Cr>i
map!        <F10>           <Esc>:-tab split<Cr>:te compile %<Cr>i

map         <F8>            <Esc>:set number<Cr>:set relativenumber<Cr>i
map!        <F8>            <Esc>:set number<Cr>:set relativenumber<Cr>i
map         <F7>            :%s/\s\+$//e<Cr>:noh<Cr>
map!        <F7>            <Esc>:%s/\s\+$//e<Cr>:noh<Cr>a

set         whichwrap+=<,>,[,],h,l
set         tabstop=4
set         shiftwidth=4
set         expandtab
set         autoread
set         nomodeline
set         background=light
"set        number
"set        mouse=a
au          FocusGained,BufEnter * :checktime

let g:usemarks=0
let g:cb_jump_over_newlines=0

let g:instant_markdown_slow=1

let g:instant_markdown_autostart=0
let g:instant_markdown_mathjax=1

let g:airline_theme='onedark'
