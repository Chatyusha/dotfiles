if exists('g:loaded_keymap')
  finish
endif
let g:loaded_keymap = 1

"{{ KeyMapping }}"

inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^i
noremap <C-e> $a
noremap <C-a> ^i
tnoremap <Esc> <C-\><C-n>

"{{ Complete }}"
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap {<CR> {<CR>}<Esc>k$a<CR>

"{{{ Window }}}"
inoremap <C-l> <Esc><C-w>li
inoremap <C-h> <Esc><C-w>hi
inoremap <C-j> <Esc><C-w>ji
inoremap <C-k> <Esc><C-w>ki
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
