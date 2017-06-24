set lines=25
set columns=90
set cmdheight=1
set encoding=utf-8
set guioptions-=T

" IMEオンオフに合わせてカーソルの色を変える
if has('multi_byte_ime')
    hi Cursor guifg=bg guibg=Green gui=NONE
    hi CursorIM guifg=NONE guibg=Red gui=NONE
endif
