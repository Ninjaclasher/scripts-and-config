" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'jiangmiao/auto-pairs'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex', {'for': 'tex'}
", 'commit': '7c886a0731f1aa283899575615b75192ec3632b7'}
Plug 'chaoren/vim-wordmotion'
Plug 'farmergreg/vim-lastplace'
call plug#end()

map         <C-Right>       :tabn<Cr>
map!        <C-Right>       <C-o>:tabn<Cr>
map         <C-Left>        :tabp<Cr>
map!        <C-Left>        <C-o>:tabp<Cr>
map         <C-S-Right>     :tabm +1<Cr>
map!        <C-S-Right>     <C-o>:tabm +1<Cr>
map         <C-S-Left>      :tabm -1<Cr>
map!        <C-S-Left>      <C-o>:tabm -1<Cr>

nmap        <A-Up>          :wincmd k<Cr>
nmap        <A-Down>        :wincmd j<Cr>
nmap        <A-Left>        :wincmd h<Cr>
nmap        <A-Right>       :wincmd l<Cr>

map         <C-s>           :w<Cr>
map!        <C-s>           <C-o>:w<Cr>
map         <C-z>           :u<Cr>
map!        <C-z>           <C-o>:u<Cr>
map!        <C-r>           <C-o><C-r>
map         <C-a>           ggVG
map!        <C-a>           <Esc>ggVG
vmap        <C-c>           "+y
vmap        <C-x>           "+d
map         <C-v>           "+P
map!        <C-v>           <C-o>"+P
map         <Bs>            <del>
tmap        <Bs>            <C-u>

map         <C-S-Up>        :silent! m-2<Cr>
map!        <C-S-Up>        <C-o>:silent! m-2<Cr>
map         <C-S-Down>      :silent! m+1<Cr>
map!        <C-S-Down>      <C-o>:silent! m+1<Cr>

map         <F11>           <Esc>:-tab split<Cr>:te compile % %:r.in %:r.out %:r.err<Cr>i
map!        <F11>           <Esc>:-tab split<Cr>:te compile % %:r.in %:r.out %:r.err<Cr>i
map         <F10>           <Esc>:-tab split<Cr>:te compile %<Cr>i
map!        <F10>           <Esc>:-tab split<Cr>:te compile %<Cr>i

map         <F9>            <Esc>:hardcopy > %:r.ps<Cr>:!ps2pdf %:r.ps<Cr>
map!        <F9>            <Esc>:hardcopy > %:r.ps<Cr>:!ps2pdf %:r.ps<Cr>i

map         <F8>            :set number<Cr>:set relativenumber<Cr>
map!        <F8>            <C-o>:set number<Cr><C-o>:set relativenumber<Cr>
map         <F7>            :%s/\s\+$//e<Cr>:noh<Cr>
map!        <F7>            <C-o>:%s/\s\+$//e<Cr><C-o>:noh<Cr>
map         <F6>            :noh<Cr>
map!        <F6>            <C-o>:noh<Cr>

inoremap    ;<cr>           <end>;<cr>

set         whichwrap+=<,>,[,],h,l
set         tabstop=4
set         shiftwidth=4
set         expandtab
set         autoread
set         nomodeline
set         background=light
set         undofile
"set        number
"set        mouse=a
au          FocusGained,BufEnter * :checktime

au          Filetype tex let b:AutoPairs = AutoPairsDefine({'$': '$', '$$': '$$'})
au          Filetype html let b:AutoPairs = AutoPairsDefine({'<': '>', '<!--': '-->'})
au          Filetype htmldjango let b:AutoPairs = AutoPairsDefine({'<': '>', '{%': '%}', '{{': '}}', '<!--': '-->'})

let g:instant_markdown_slow=1
let g:instant_markdown_autostart=0
let g:instant_markdown_mathjax=1

let g:airline_theme='onedark'

let g:AutoPairsShortcutBackInsert='<C-L>'

let g:tex_flavor='latex'
let b:tex_stylish=1
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_quickfix_mode=0
let g:vimtex_view_general_viewer='zathura'
let g:vimtex_syntax_autoload_packages=['amsmath','tikz']

hi QuickFixLine guibg=Black
