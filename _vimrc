set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"设置编码
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set termencoding=utf-8
"提示信息乱码
set langmenu=zh_CN.UTF-8
set helplang=cn
language messages utf-8
" 启动的时候不显示援助乌干达儿童的提示
set shortmess=atI 
"关闭标题栏
set go=
"设置工作目录
let $projectpath='d:\web\org'
cd $projectpath
"设置NerdTree
let NERDChristmasTree=1										" 类似圣诞树的显示方式
let NERDTreeAutoCenter=1									" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeBookmarksFile=$VIMFILES.'\NERDTree_bookmarks'	" 指定书签文件
let NERDTreeMouseMode=2										" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeShowBookmarks=1									" 是否默认显示书签列表
let NERDTreeShowFiles=1										" 是否默认显示文件
let NERDTreeShowHidden=0									" 是否默认显示隐藏文件
let NERDTreeDirArrows='#'									" 是否默认显示隐藏文件
let NERDTreeShowLineNumbers=0								" 是否默认显示行号
let NERDTreeWinPos='right'									" 窗口位置（'left' or 'right'）
let NERDTreeWinSize=30									" 窗口宽度
let NERDTreeDirArrows=0
let NERDTreeQuitOnOpen = 0									" 当通过NERD Tree打开文件自动退出NERDTree界面
let NERDTreeIgnore=['\.exe$','\.gif$','\.png$','\.jpeg$','\.swf$','\.ttc$','^CVS$','^SVN$','^.jpg$','^.bmp$','^.doc$','^.xlsx$']
nmap q <esc>:NERDTreeToggle<cr>
"设置主题
set guifont=Monaco:h13 "\ New:h11
colorscheme ji-blue
" 设置界面分割
let g:winManagerWindowLayout = "FileExplorer"
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 25
"在进入vim时自动打开winmanager
let g:AutoOpenWinManager = 1
"不生成交换文件
set nobackup 
set nowritebackup 
set noswapfile
"显示行号
set nu
"全屏设置最大化： 
au GUIEnter * simalt ~x 
"修改行号背景色和数字颜色
"hi LineNr  guifg=#7F908A guibg=#272822"
"自动补全函数
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"语法检查设置
"let g:checksyntax_auto = 1 " 不自动检查
let g:syntastic_check_on_open = 1  "打开文件后是否直接检查错误
let g:syntastic_error_symbol = 'x'	"错误字符 
let g:syntastic_warning_symbol = '!' "警告字符
let g:syntastic_auto_loc_list = 0 "是否自动显示错误提醒详情
let g:syntastic_loc_list_height = 1 "警告详情列表高度
let g:syntastic_enable_highlighting = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_enable_php_checker = 1
"自动补全括号
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

function! ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
     return "\<Right>"
 else
     return a:char
 endif
endfunction

"记录历史文件
let MRU_File=$VIMFILES.'\mru_files.txt' 
let MRU_Max_Entries = 300
let MRU_Add_Menu = 0
nmap f <esc>:MRU<cr>

"设置快捷键
noremap zz <esc>:w<cr>
imap ;; <ESC>
nmap <tab> V<

"调试快捷键（var_dump）
imap <F6> var_dump($);exit;<left><left><left><left><left><left><left>

"注释当前行,shift+v多选行后也可注释多行
map <F3> <ESC>^i//<ESC>
"取消注释
map <F4> <ESC>^xx

"设置缩进
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set autoindent
:set cindent

"设置函数注释
map <F2> ms:call AddTitle()<cr>'s
function AddTitle()
        call append(line("."),"    /**")
        call append(line(".")+1," 	* Description : ")
        call append(line(".")+2," 	* Author      : jishuai")
        call append(line(".")+3," 	* Created Time: ".strftime("%Y-%m-%d %H:%M"))
        call append(line(".")+4,"	*/")
endfunction
