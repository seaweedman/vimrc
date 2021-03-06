" 关闭vi兼容
set nocompatible

" 解决中文乱码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1

if has('gui_running') 
	" 隐藏菜单栏
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	set guioptions-=b
	set showtabline=0

	" 更改菜单和提示语言为英语
	set langmenu=en_US
	let $LANG = 'en_US'
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim

	" 设置窗口位置
	winpos 160 20
	" 设置初始窗口大小
	set lines=40 columns=110

	" 默认进入目录
	cd E:\workspace

	" 禁用vim-polyglot插件编辑文件
	" let g:polyglot_disabled = ['ftdetect']

	" 插件
	call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'sheerun/vim-polyglot'
	Plug 'joshdick/onedark.vim'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'skywind3000/vim-terminal-help'
	Plug 'vim-airline/vim-airline'
	call plug#end()

    " let g:airline_powerline_fonts = 1
    " let g:airline_theme='wombat'
    let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_nr_show = 1
	let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#whitespace#symbol = '!'
	let g:airline_section_z=''
    " let g:airline_enabled=0

	" 设置切换Buffer快捷键
    nnoremap <C-N> :bn<CR>
    nnoremap <C-P> :bp<CR>
	nnoremap <C-C> :bd<CR>

	" 颜色主题
	syntax on
	syntax enable
	set t_Co=256
	" 可选主题 murphy dracula onedark PaperColor
	colorscheme PaperColor

	" 设置字体（推荐Consolas 字体下载地址 https://www.nerdfonts.com/font-downloads）
	" set guifont=ProFontWindows\ Nerd\ Font:h14
	set guifont=Consolas:h11
	" set guifontwide=SimSun-ExtB:h12

	" 背景透明
	" autocmd guienter * call libcallnr('vimtweak.dll', 'SetAlpha', 222)
	" 全屏
	" map <F11> <Esc>:call libcallnr('gvimfullscreen.dll', 'ToggleFullScreen', 0)<CR>

	" F2 文件目录
	map <F2> :NERDTreeToggle<CR>
	let NERDTreeShowBookmarks=1
	let NERDTreeShowHidden=1 " 目录中显示隐藏文件

	" F3 内置terminal
	map <F3> :ter<CR>

	" 插入模式光标移动配置
	inoremap <C-h> <Left>
	inoremap <C-j> <Down>
	inoremap <C-k> <Up>
	inoremap <C-l> <Right>
	inoremap <C-d> <DELETE>

	" 共享剪贴板
	set clipboard+=unnamed

	" 搜索高亮显示
	set hlsearch

	" 显示行号
	set number

	" 根据打开文件切换对应路径
	set autochdir

	" 设置禁用错误提示音
	set belloff=all

	" 设置tab空格数
	set nowrap
	set backspace=indent,eol,start
	set shiftwidth=4

	" tab字符替换成4个空格
	set expandtab
	set tabstop=4

	" 自动缩进
	set smarttab
	set autoindent
	set smartindent
endif
