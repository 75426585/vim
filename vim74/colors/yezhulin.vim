" arnaudmix2 Color Scheme
" Author:  Arnaud Ronsse <arnaudmix2@gmail.com>
" Version: 1.0.0

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "yezhulin"
"let g:colors_name = "arnaudmix2"

"普通文本
hi Normal       guifg=#E6DB74 guibg=black ctermfg=grey ctermbg=black
"无文本区域
"hi NonText      guifg=grey50 guibg=grey10 ctermfg=white ctermbg=darkgrey
"搜索单词
hi Search       guifg=black guibg=darkred ctermfg=black ctermbg=darkred
hi IncSearch    guifg=darkred guibg=black ctermfg=darkred ctermbg=black
hi StatusLine   guifg=grey guibg=darkgreen gui=bold ctermfg=grey ctermbg=darkgreen cterm=bold
hi StatusLineNC guifg=darkred guibg=grey ctermfg=darkred ctermbg=grey
hi VertSplit    guifg=grey50 guibg=grey50 ctermfg=darkgrey ctermbg=darkgrey
hi Folded       guifg=grey guibg=darkblue gui=bold ctermfg=grey ctermbg=darkblue cterm=bold

"补全
hi Pmenu        guifg=black guibg=grey ctermfg=black ctermbg=grey
"补全选中项
hi PmenuSel     guifg=grey guibg=grey10 gui=bold ctermfg=grey ctermbg=darkgrey cterm=bold

"光标所在行
hi CursorLine   guibg=grey10 ctermbg=darkgrey 
"行号
hi LineNr       guifg=grey20 guibg=grey10 ctermfg=white ctermbg=darkgrey

"注释
hi Comment    guifg=Slategray  
hi Todo       guifg=red guibg=darkred gui=bold ctermfg=red ctermbg=darkred cterm=bold
hi Title      guifg=white gui=bold ctermfg=white cterm=bold
hi Underlined guifg=darkcyan ctermfg=darkcyan

"变量声明，如$
hi Statement       guifg=#F92672  gui=none
"hi Statement  guifg=darkyellow gui=bold ctermfg=darkyellow cterm=bold
hi Special    guifg=yellow gui=bold ctermfg=yellow cterm=bold
"函数声明 function
"hi PreProc    guifg=deepskyblue2 gui=bold ctermfg=cyan cterm=bold
hi PreProc    guifg=deepskyblue2 gui=bold ctermfg=cyan cterm=bold
""变量
"hi Identifier guifg=violetred ctermfg=red 
hi Identifier      guifg=#FD971F  
"hi String     guifg=chocolate2 
"hi String          guifg=#E6DB74
hi String guifg=Skyblue

"系统常量
hi Constant   guifg=Hotpink gui=bold ctermfg=darkcyan cterm=bold
hi Type       guifg=violetred gui=bold ctermfg=magenta cterm=bold
"函数名称
"hi Function   guifg=limegreen gui=bold ctermfg=green cterm=bold
hi Function   guifg=limegreen 
"hi Function    guifg=#A6E22E


hi htmlTag    guifg=blue gui=bold ctermfg=blue cterm=bold
hi htmlEndTag guifg=blue gui=bold ctermfg=blue cterm=bold

hi xmlTag     guifg=deepskyblue2 ctermfg=cyan
hi xmlTagName guifg=deepskyblue2 ctermfg=cyan
hi xmlEndTag  guifg=firebrick3 ctermfg=red

"可视模式选择后色彩
hi Visual gui=bold guifg=black guibg=#F92672

"光标所在字符
hi Cursor  guibg=#F92672 

"括号颜色
hi MatchParen  guibg=limegreen guifg=black gui=bold

"定界符
hi Delimiter   guifg=Yellowgreen

