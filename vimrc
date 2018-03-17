set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
"
" " let Vundle manage Vundle, required
 Plugin 'fatih/vim-go'

 Plugin 'gmarik/Vundle.vim'
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required


"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
"Bundle 'gmarik/vundle'
"
"
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'Valloric/ListToggle'
"Bundle 'scrooloose/syntastic'
"
"
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
"
"" 不要使用vi的键盘模式，而是vim自己的

set nocompatible

" 语法高亮
syntax on

" 去掉输入错误的提示声音
set noeb

" 在处理未保存或只读文件的时候，弹出确认
set confirm 

" 自动缩进
set autoindent
set cindent 
set smartindent

set autowrite

" Tab键的宽度
set tabstop=4

" 统一缩进为4 
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab

" 在行和段开始处使用制表符
set smarttab

" 显示行号
set number

" 历史记录数
set history=1000

"禁止生成临时文件
"set nobackup
"set noswapfile

"搜索忽略大小写
set ignorecase

"搜索逐字符高亮
set hlsearch
set incsearch

"行内替换
set gdefault

" 编码设置
set enc=utf-8
set fencs=utf-8,gb18030
"set enc=gb18030
"set fencs=gb18030,utf-8
"set termencoding=gb18030

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 总是显示状态行
set laststatus=2

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 为C程序提供自动缩进
set smartindent

vmap <C-Z> :s/^/#/ <CR>
vmap ZZ :s/^##*//  <CR>

augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
 " 按照名称排序 
 let Tlist_Sort_Type = "name" 

 " 在右侧显示窗口 
 let Tlist_Use_Right_Window = 1 

 " 压缩方式 
 let Tlist_Compart_Format = 1 

 " 如果只有一个buffer，kill窗口也kill掉buffer 
 let Tlist_Exist_OnlyWindow = 1 

 " 不要关闭其他文件的tags 
 let Tlist_File_Fold_Auto_Close = 0 

 " 不要显示折叠树 
 let Tlist_Enable_Fold_Column = 0 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

" 打开文件类型检测, 加了这句才可以用智能补全
filetype plugin indent on
" 关掉智能补全时的预览窗口
set completeopt=longest,menu 

" python自动补全
filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete

set cursorline
set textwidth=160
" hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE


