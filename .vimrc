" " 开了这个很卡
" source $MYVIMRC    ex模式命令，重新加载vimrc文件
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ======================================= C make
" compile and run C
autocmd FileType c nnoremap <leader>r :call CompileAndRun()<CR>
autocmd FileType python nnoremap <leader>r :call CompileAndRun()<CR>
" nnoremap <F5> :call CompileAndRun()<CR>
function! CompileAndRun()
    "  save all changes
    exec "wa"
    if &filetype == 'c'
        exec "AsyncRun! gcc  % -o %< -lm;  ./%<"        
    endif
    if &filetype == 'python'
        exec "AsyncRun -raw /Users/chegopy/miniforge3/bin/python3 %"
    endif
endfunction
" autoatically open quickfix list
let g:asyncrun_open=6


" ======================================= python make
 " python auto format  <leader> =
" autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>
" python auto isort 'import'
autocmd FileType python nnoremap <leader>i :!isort %<CR><CR>
hi pythonSelf            ctermfg=174 guifg=#6094DB cterm=bold gui=bold
" let g:indentLine_enabled = 0    "禁用缩进线"


set nobackup
set nowb
set noswapfile
set helplang=cn    " 使用中文帮助文档"


let mapleader = ','
nnoremap <leader>= :Autoformat<CR>
" 跳转到定义
noremap <leader>] :YcmCompleter GoTo<cr>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nnoremap <leader>p "+p
" 将反向查找字符键改了
noremap \ ,     
nnoremap <space> za    " Enable folding with the spacebar"
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" 跳转至右方的窗口
nnoremap <c-l> <C-W>l
" 跳转至左方的窗口
nnoremap <c-h> <C-W>h
" 跳转至上方的子窗口
nnoremap <c-k> <C-W>k
" 跳转至下方的子窗口
nnoremap <c-j> <C-W>j
nnoremap <c-o> <C-W>o
map <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
map <F5> :GundoToggle<CR>
" 格式化文件

map / /\v



set nowrap
set nobackup      "" 表示不需要备份文件
set noswapfile    "" 表示不创建临时交换文件
set nowritebackup "" 表示编辑的时候不需要备份文件
set undofile    "" 表示不创建撤销文件
set undodir="$HOME/.vim/undodir"
" 关闭此选项，适应H M L
set scrolloff=2       " 光标距离上下行距离"
" set shell=bash\ -i  " 打开md预览需要"
set incsearch         " 开启实时搜索功能
set ignorecase        " 搜索时大小写不敏感
set smartcase
set nocompatible      " 关闭兼容模式
set wildmenu          " vim 自身命令行模式智能补全
set nofoldenable
set laststatus=2      " 总是显示状态栏
set ruler             " 显示光标当前位置
set number            " 开启行号显示
set cursorline        " 高亮显示当前行/列
set cursorcolumn
set hlsearch          " 高亮显示搜索结果
set hidden            " 文件修改之后直接切换"
set expandtab         " 将制表符扩展为空格
set tabstop=4         " 设置编辑时制表符占用空格数
set shiftwidth=4      " 设置格式化时制表符占用空格数
set softtabstop=4     " 让 vim 把连续数量的空格视为一个制表符
set foldmethod=indent " 根据缩进折叠"
set history=1000
set autochdir
set autowrite
set autoread
set wildignore=*.o,*~,*.pyc  " Ignore compiled files
" set guifont=YaHei-Consolas-Hybrid:h20   " 设置 gvim 显示字体
syntax enable       " 开启语法高亮功能
syntax on           " 允许用指定语法高亮配色方案替换默认方案
set autochdir       " 自动设置当前编辑文件的路径为工作路径"

filetype indent on  " 自适应不同语言的智能缩进

filetype on         " 开启文件类型侦测
filetype plugin on  " 根据侦测到的不同类型加载对应的插件


" 关闭备份
set nobackup
set nowb
set noswapfile

set undofile
set undodir="$HOME/.vim/undodir"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


set grepprg=ack\ --group\ --column\ $*      "指定grep查找结果显示格式
set grepformat=%f:%l:%c:%m




" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" 默认显示缩进线
" let g:indent_guides_enable_on_vim_startup = 0



" 将easymotion的默认<leader><leader>改为<leader>
map <Leader> <Plug>(easymotion-prefix)
" <leader>w <leader>f <leader>b

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" nerdtree 窗口宽度
" 打开nerdtree之后ma新建文件
let g:NERDTreeWinSize=25

" 设置normal模式切换到的输入法, 习惯了很有用
let g:smartim_default = 'com.apple.keylayout.ABC'


"
" YouCompleteMe
set runtimepath+=~/.vim/plugged/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
"disable 禁用ycm 语法检查
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_collect_identifiers_from_tags_files = 1     " 开启 YCM基于标签引擎
" 关闭启动vim之后youcompleteme的提醒
let g:ycm_confirm_extra_conf = 0
" 关闭ycm自动弹出函数原型预览窗口
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
" 激活ycm 输入两个字符即可猜测语义
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }





" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

 let g:tagbar_width = 25                 "设置tagbar的宽度为30列，默认40
 let g:tagbar_autofocus = 1             " 
 let g:tagbar_sort = 0                     "设置标签不排序，默认排序


" let g:ale_lint_on_enter = 0                 "打开文件不检查"
let g:ale_sign_error = '.'
let g:ale_sign_warning = '.'
" let g:ale_lint_on_save = 0   " 禁止保存文件时检查错误，恼人"
" let g:ale_python_mypy_ignore_invalid_syntax = 0 
let g:ale_lint_on_insert_leave = 0  " 禁止离开插入魔术检查"
" let g:ale_list_window_size = 0    " 不要弹出列表"
nmap <silent> [j <Plug>(ale_previous_wrap)
nmap <silent> ]j <Plug>(ale_next_wrap)
let g:ale_set_highlights = 0       " 禁止高亮错误信息"
"
"
" table mode拐角处
" let g:table_mode_corner_corner='+'
" <leader>tm 进入table mode, <leader>tt 将csv转换为table 
" 注意要用英文输入法输入|, 在分隔行键入两个:居中对齐

" 开启括号颜色匹配
let g:rainbow_active = 0    


let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification



let g:gundo_prefer_python3 = 1    " undo tree"



" - Avoid using standard Vim directory names like 'plugin'
"激活自带插件"
set nocompatible
filetype plugin on 
runtime macros/matchit.vim
"增强%功能，可在配对的关键字之间跳转"

call plug#begin('~/.vim/plugged')
" 对齐插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 显示缩进层次
Plug 'nathanaelkane/vim-indent-guides'
" 代码补全
Plug 'Valloric/YouCompleteMe'
" 目录树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 显示书签跳转标记
Plug 'kshenoy/vim-signature'
" 异步搜索并可以操作搜索结果,默认使用工作目录搜索
Plug 'dyng/ctrlsf.vim'
" 多光标操作
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" 键入enter选择最近的文本对象，再次键入继续扩大,键入<BS>缩小范围
Plug 'gcmt/wildfire.vim'
" 增强跨行搜索跳转功能
Plug 'Lokaltog/vim-easymotion'

" 实时预览md文件,打开md文件同时浏览器打开
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

"" 用括号等环绕文本
" cs"'   将"替换为’
" ysiw"  用"环绕光标下单词
" yss"   用 "环绕整行
" ds"    删除环绕的"
" 在可视模式下添加环绕 S
Plug 'tpope/vim-surround'
" 映射按键在quickfix列表等，交换行，添加空行
Plug 'tpope/vim-unimpaired'

" Ex模式替换多个单词很方便P221
Plug 'tpope/vim-abolish'

" 检查语法
Plug 'dense-analysis/ale'
" gc操作符，注释命令P24"
Plug 'tpope/vim-commentary'
" 添加了两个文本对象，ie，ae，作用于整个文件,两个插件一起才可以"
" gcae 切换整个文件的切换状态
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
" 相对行号
" Plug 'myusuf3/numbers.vim'
" 浏览代码的结构
Plug 'preservim/tagbar'
" 运行python <leader>r
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" auto pairs
Plug 'jiangmiao/auto-pairs'

" md创建表格, <leader>tm进入表格模式
" Plug 'dhruvasagar/vim-table-mode' 
" 自动切换输入法，两个一起用
Plug 'ybian/smartim'
" add 'zo' to open fold, 'zc' to close fold
Plug 'tmhedberg/SimpylFold'
" color parentthese
Plug 'frazrepo/vim-rainbow'
" asyncrun 
Plug 'skywind3000/asyncrun.vim'
" add support . will work with ds, cs, ys, yss
Plug 'tpope/vim-repeat'
" python缩进线
Plug 'Yggdroot/indentLine'
" python格式化
Plug 'vim-autoformat/vim-autoformat'
" debuger
Plug 'puremourning/vimspector'
" Plug '907th/vim-auto-save'
" 增强nerdtree功能
Plug 'tpope/vim-vinegar'
" 撤销树
Plug 'sjl/gundo.vim'
" git结合vim
Plug 'tpope/vim-fugitive'
Plug 'metakirby5/codi.vim'
Plug 'vim-python/python-syntax'





"
" 主题插件
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'rakr/vim-one'
Plug 'liuchengxu/space-vim-dark'
Plug 'sainnhe/edge'

"
" Initialize plugin system
call plug#end()

" =======================颜色字体主题======================“
" 高亮颜色必须在主题插件之后加载
syntax enable
" colorscheme one
colorscheme edge
" colorscheme space-vim-dark
" colorscheme quantum
" colorscheme onedark
" colorscheme gruvbox
set background=dark

" 状态栏主题 
" let g:airline_theme='deus'
let g:airline_theme='one'

" show upper status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


set macligatures
" set guifont=Fira_Code:h20
set guifont=CamingoCode:h22

set guifont=SourceCodePro-It:h20
" set guifont=CamingoCode_Italic:h22
" set guifont=DroidSansMono:h20   " 设置 gvim 显示字体
" set guifont=Menlo:h20   " 设置 gvim 显示字体


" hi Normal guibg=#282828        " 背景颜色"
" " 搜索高亮颜色
hi Search term=reverse guifg=#afd7ff guibg=#5C6370 
" " guifg 修改字符颜色
hi Cursor  guifg=#282C34 guibg=#9999cc 
" 禁止光标闪烁
" set gcr=n-v-c:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set gcr=i-ci:ver16-Cursor/lCursor,n-v-c:block-blinkon0   " 改变光标宽度，百分比"
" 设置光标颜色
highlight Cursor guifg=#dfffdf guibg=black


" pymode 设置块 Search in python documentation (``K``)
" Trim unused white spaces on save. 
" let g:pymode_trim_whitespaces = 1
" let g:pymode_lint_ignore = ["E501", "F403","W401", "E1101", "F841"]
" let g:pymode_virtualenv = 1
" " 设置其他的python解释器，很有用, conda
" let g:pymode_virtualenv_path = '/Users/chegopy/miniforge3/envs/python3'
let g:python_highlight_all = 1
