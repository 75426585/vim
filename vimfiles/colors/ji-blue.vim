hi clear
if exists("syntax_on")
  syntax reset
endif
colorscheme default
let g:colors_name = "ji-blue"

" GUI

"highlight Search     guifg=Yellow	guibg=Red	gui=bold
"highlight Visual     guifg=#404040			gui=bold

"highlight Special    guifg=#5d9391
"highlight Character    guifg=Red
"highlight StatusLine guifg=blue		guibg=white


hi Type       guifg=violetred gui=bold ctermfg=magenta cterm=bold
hi Identifier      guifg=#FD971F 
"hi phpFunctions      guifg=red 

"我的配置
hi LineNr  guifg=#435A4D guibg=#042029
highlight Normal     guifg=#b0dfa1	guibg=#042029
highlight Cursor     guifg=Black	guibg=Green	gui=bold
"变量
highligh Identifier guifg=#268BD2
highligh Constant guifg=#116E86
highligh Function guifg=#839496
"if switch"
highligh Conditional guifg=#859900
"for foreach"
highligh Repeat guifg=#859900
"case default"
highligh Label guifg=#859900
"$ isset and = "
highligh Statement guifg=#859900
"class public ->"
highligh Type guifg=#737917
"class parent ->extens"
highligh Structure guifg=#A57800
"construct $ isset?"
highligh Operator guifg=#859900
highligh Delimiter guifg=#BD3613
highligh String guifg=#269186
highligh Comment guifg=#586E75
highligh phpFunctions guifg=#ff0000
highligh phpMethods guifg=#ff0000





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


