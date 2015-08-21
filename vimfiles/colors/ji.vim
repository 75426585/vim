hi clear
if exists("syntax_on")
  syntax reset
endif
colorscheme default
let g:colors_name = "ji"

" GUI
highlight Normal     guifg=#b0dfa1	guibg=Black
highlight Search     guifg=Yellow	guibg=Red	gui=bold
highlight Visual     guifg=#404040			gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=#5d9391
highlight String    guifg=#547834
highlight Character    guifg=Red
highlight Comment    guifg=#857a7a
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=Yellow			gui=NONE
highlight Type						gui=NONE
hi Constant   guifg=Hotpink gui=bold ctermfg=darkcyan cterm=bold
hi Type       guifg=violetred gui=bold ctermfg=magenta cterm=bold
hi Identifier      guifg=#FD971F 
hi phpFunctions      guifg=red 
" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue	ctermbg=white
highlight Statement  ctermfg=Yellow			cterm=NONE
hi Directory guifg=Green
highlight Type						cterm=NONE

" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey	ctermbg=Black	cterm=NONE	guifg=Grey80      guibg=Black	gui=NONE
    highlight Search  ctermfg=Black	ctermbg=Red	cterm=bold	guifg=Black       guibg=Red	gui=bold
    highlight Visual  ctermfg=Black	ctermbg=yellow	cterm=bold	guifg=#404040			gui=bold
    highlight Special ctermfg=LightBlue			cterm=NONE	guifg=LightBlue			gui=NONE
    highlight Comment ctermfg=Yellow			cterm=NONE	guifg=LightBlue			gui=NONE
  endif
endif


