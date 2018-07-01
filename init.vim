" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()
call vam#ActivateAddons(['lh-brackets'], {})


map         <C-Right>       :tabn<Cr>
map!        <C-Right>       <Esc>:tabn<Cr>a
map         <C-Left>        :tabp<Cr>
map!        <C-Left>        <Esc>:tabp<Cr>a
map         <C-S-Right>     :tabm +1<Cr>
map!        <C-S-Right>     <Esc>:tabm +1<Cr>a
map         <C-S-Left>      :tabm -1<Cr>
map!        <C-S-Left>      <Esc>:tabm -1<Cr>a

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
map         <C-S-Up>        ddkP
map!        <C-S-Up>        <Esc>ddkPa
map         <C-S-Down>      ddp
map!        <C-S-Down>      <Esc>ddpa

map         <F11>           <Esc>:-tab split<Cr>:te compile %:t %:t:r.in %:t:r.out %:t:r.err<Cr>i
map!        <F11>           <Esc>:-tab split<Cr>:te compile %:t %:t:r.in %:t:r.out %:t:r.err<Cr>i
map         <F10>           <Esc>:-tab split<Cr>:te compile %:t<Cr>i
map!        <F10>           <Esc>:-tab split<Cr>:te compile %:t<Cr>i

set         whichwrap+=<,>,[,],h,l
set         tabstop=4
set         shiftwidth=4
set         expandtab
set         autoread
au          FocusGained,BufEnter * :checktime
"set        number

let         g:usemarks=0
