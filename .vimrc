"Update on 2016/07/07 by SKY-TM
"You should firstly install Vundle before you install other plugin.
"---------------------------分割线--------------------------------
"shortcuts:
"ctrl + z	: Revocation
"<F4>		: Open/Close NERDTree


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
	filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set whichwrap+=<,>,h,l  " 允许backspace和光标键跨越行边界 
set clipboard=unnamed


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
" =================== vim default setting end =======================
                                   .       
" ========================= Normal Setting Start =========================  
set nocompatible
syntax on

set regexpengine=1
set background=dark
" @ COLOR Themes
"colorscheme solarized
colorscheme molokai

" Format 
set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
"set statusline=%F%m%r%h%w/[FORMAT=%{&ff}]/[TYPE=%Y]/[ASCII=/%03.3b]/[HEX=/%02.2B]/[POS=%04l,%04v][%p%%]/[LEN=%L]

" Encoding setting
set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set fenc=utf-8 
"set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
set guifont=Liberation\ Mono\ for\ Powerline\ 12


" Search and Case
set autoindent
set smartindent
set cindent
set autoread
set ignorecase
set hlsearch
set wrap
set autochdir "this setting will make the dir auto go to current file's path
" No back up files 
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set ruler
set cursorline
"hi CursorLine cterm = NONE ctermbg = DarkMagenta
"hi CursorColomn cterm = NONE ctermbg = DarkMagenta
"hi Pmenu ctermbg = LightBlue
"hi PmenuSel ctermbg = White ctermfg = LightBlue
set laststatus=2
set guioptions-=e
"-----禁止显示菜单栏和工具条---
set guioptions-=m
set guioptions-=T
"-----关闭滚动条---------------
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=B
"set guioptions-=0
"set go=
" setting the tabs like that 
"set list listchars=tab:→\ ,trail:\ 

" ========================= Normal Setting End =========================
"
"
"--------------------------TagList Setting Start---------------------------

"/usr/bin/ctags is the path of Ctags application.
"if your system is windows
"let Tlist_Ctags_Cmd = 'ctags'
let	Tlist_Ctags_Cmd = '/usr/bin/ctags'

"make the TagList window appear on right and sort the file by filename
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"


"let Tlist_Auto_Open = 1			"Auto open Taglist when open Vim

let Tlist_File_Fold_Auto_Close = 1		"Taglist displays only the current file tag, tag other documents are floded
let Tlist_Show_One_File = 0			"让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close = 1	"非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow = 1			"当taglist是最后一个分割窗口时，自动退出vim

"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always = 1  "实时更新tags

map <silent><F9> :TlistToggle<CR>
imap <silent><F9> <Esc>:TlistToggle<CR>

"-------------------------TagList Setting End------------------------------
"
"
"-------------------------QuickFix Start-----------------------------------

map <silent><F2> :copen<cr>
imap <silent><F2> <Esc>:copen<cr>

"
"-------------------------TagBar Setting Start-----------------------------
"TagBar's function likes TagList
"
"let tagbar_ctags_bin = '/usr/bin/ctags'
"let g:tagbar_ctags_bin = '/usr/bin/ctags'			"gui TagBar Config
"let g:tagbar_right = 1                                "在右侧
"let g:tagbar_width = 25                               "设置宽度
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"nmap <silent> <F9> : Tagbar <cr>
"
"------------------------TagBar Setting End----------------------------------

" ========================= Vundle Plugin Manager =========================  
set nocompatible
filetype off

" Vundle Config Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/bundle")
"
"vim scripts  www.vim-scripts.org/vim/scripts.html
" # Plugins Beginning #
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'

" @ Plugin --- [ Style Custom ]
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'

" @ Plugin --- [ Code && File Manage Custom ]
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'

" @ Plugin --- [ Code && Google Geek God ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/ListToggle'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'fatih/vim-go'

" @ Plugin --- [ Code && Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'

" @ Plugin --- [ CWD fast Looking ]
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/unite-outline'
Plugin 'Shougo/unite-session'
Plugin 'tsukkee/unite-tag'
Plugin 'thinca/vim-unite-history'
Plugin 'yegappan/mru'

" @ Plugin --- [ Git && Shell Tools ]
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'airblade/vim-gitgutter'

" @ Plugin --- [ Code Bat Sreach ]
Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'gcmt/wildfire.vim'

" @ Plugin --- [ Web Development Tools ]
Plugin 'mklabs/grunt.vim'

" @ Plugin --- [ Program Language ]
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
"Plugin 'chrisbra/Colorizer'

Plugin 'terryma/vim-smooth-scroll'

"@ Plugin --- [ WinManager ]
"Plugin 'winmanager'

"@ Plugin --- [ NERDTree ]
"Plugin 'The-NERD-tree'
"Plugin 'The-NERD-Commenter'

"@Plugin --- [ C++ Omni Complete]
Plugin 'OmniCppComplete'
Plugin 'minibufexpl.vim'
Plugin 'bufexplorer.zip'

"@Plugin --- [ python mode ]
Plugin 'klen/python-mode'

"@Plugin --- [ color scheme ]
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype on
filetype plugin on
filetype plugin indent on



" ========================= Vundle Plugin Setup End ========================= 


" ========================= Plugin Config Start ========================= 


" @ Linux Install Python PowerLine settings
" @ If you used [airline]  You should Ignor this! 

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup


" -----------------------------

"---------------alrLine Config--------------
"this Plugin will make set statusline command do not work!
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "|"
let g:airline_mod_map={}
"let g:airline_exclude_filename=[]
"let g:airline_exclude_filetypes=[]
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
"let g:bufferline_echo=0
let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

"---------NERDTree Config ------------------
let NERDTree_title = "[NERDTree]"
let NERDTreeWinPos = "right"
let NERDTreeChDirMode = 2 
let NERDTreeShowBookmarks = 1
map <silent> <F4> :NERDTreeToggle<CR>
imap <silent> <F4> <Esc>:NERDTreeToggle<CR><i>
function! NERDTre_Start()
	exec 'NERDTree'
endfunction
"function! NERDTree_IsValid()
""	return 1
"endfunction


"------------WinManager configi------------
"------------So Mach BUG! T_T--------------
"put down F4 to open WinManager
"let g:winManagerWindowLayout = "NERDTree|TagList"
"let g:persistentBehaviour = 0
"let loaded_winmanager = 1
"let g:AutoOpenWinManager = 1
"let g:WinManagerWidth = 30
"nmap <silent> <F4> :WMToggle<cr>

"------------Omni Cpp Complete----------------
set nocp
filetype plugin on

"------------miniBufExplorer config-----------
"------------Multi-file Editing Function------ 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne = 0

"------------Look Up File Setting-------------
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找   
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串   
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史   
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目   
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件   
if filereadable("./filenametags")                "设置tag文件的名字  
	let g:LookupFile_TagExpr ='"./filenametags"'  
endif  


" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
" set Syntastic Cheacker engine 
" example JavaScript use JSHint [ NodeJS ]
let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_java_checkers       = ['java', 'jsp']
let g:syntastic_c_checkers          = ['c', 'h']
let g:syntastic_cpp_checkers        = ['cpp']

" ListToggle QuickFix Config
let g:lt_location_list_toggle_map = '<F2>'
let g:lt_quickfix_list_toggle_map = '<F2>'

" YouCompleteMe Geek Config
set completeopt=longest,menu

let g:ycm_global_ycm_extra_conf                         = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf                            = 0
let g:ycm_add_preview_to_completeopt					= 0

let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion               = 1   " 从1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc                                = 1
let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
let g:ycm_complete_in_strings                           = 0   " 在字符串输入中不能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_blacklist = {
			\ 'tagbar'    : 1,
			\ 'qf'        : 1,
			\ 'notes'     : 1,
			\ 'markdown'  : 1,
			\ 'unite'     : 1,
			\ 'text'      : 1,
			\ 'vimwiki'   : 1,
			\ 'gitcommit' : 1,
\}


"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
"nnoremap <F7>  :SyntasticToggleMode <CR>


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = "<c-e>"
let g:UltiSnipsJumpForwardTrigger  = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<c-l>'
"let g:user_emmet_settings = {
""\ 'php'     : {
""\ 'extends' : 'html',
""\ 'filters' : 'c',
""\ },
""\ 'xml'     : {
""\ 'extends' : 'html',
""\ },
""\ 'haml'    : {
""\ 'extends' : 'html',
""\ },
""\}


" JavaScript Lib Syntax
autocmd BufReadPre *.js let b:javascript_lib_use_jquery     = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone   = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude    = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs  = 1

" HTML5 Syntax


" C++ Syntax HighLight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1


" GitGutter Setting
"hi clear SignColumn


" c.vim Building Config for C/C++ Vim
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen = 'yes'
"let  g:C_LocalTemplateFile = '~/.vim/c-support/templates/Templates'


" vim-smooth-scroll Config
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_sc`roll#down(&scroll*2, 0, 4)<CR>



" Start it in browser. Only for Linux Google Chrome
"nnoremap <F8> :!google-chrome %<CR><CR>

" Start Python mode config
" show Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K' " put down 'K' show Doc

" check code
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes, pep8"
let g:pymode_lint_write = 1 "aoto check on save

"Support virtualenv
let g:pymode_virtualenv = 1

"Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b' "put down 'b' create breakpoint

"syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"don't auto fold the code
let g:pymode_folding = 0

" ========================= Plugin Config End =========================

" ========================= GUI Setting =========================

"map <silent> <F2> :if &guioptions =~# 'T' <Bar>
"        \set guioptions-=T <Bar>
"        \set guioptions-=m <bar>
"    \else <Bar>
"        \set guioptions+=T <Bar>
"        \set guioptions+=m <Bar>
"    \endif<CR>

" ========================= GUI End =========================


"------------------------ C++ Compile Setting -----------------
" C++的编译和运行 
map <F6> :call CompileRunGpp()<CR> 
function! CompileRunGpp() 
	exec "w" 
	exec "!g++ % -o %<" 
	exec "! ./%<" 
endfunction


"----------------- Revocation --------------------------------------
"ctrl + z 撤销
map <silent> <c-z> :u<cr>
imap <silent> <c-z> <Esc>:u<cr><i>


"---------------- 对齐 ---------------------------------------------
"gg（把关标定位到最上面），V（进入VISUAL模式），
"shift+g（选中整篇文本），然后＝



"--------------- Find ---------------------------------------------
"ctrl + f 查找
"no Success
"nmap <silent> <c-f> :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr> 


"----------------- Save --------------------------------------------
"ctrl + s 保存
"还是比较习惯用命令
"map <silent> <c-s> :w<cr>
"imap <silent> <c-s> <Esc>:w<cr><i>

"----------------- Copy Multi-line And Paste---------------------------------
""复制多行和粘贴复制多行和粘贴
"imap <silent> <c-c> <Esc><c-v><y><Esc><i>
"最好就用：10,100 copy 200
"把第10到100行的内容复制到第200行
"或者进入--可视块(ctrl + v)--模式，然后光标移动选中内容，然后用y复制




"---------------- Do Not Success -------------------------------------
"--------------- Comment Multi-line ---------------------------
"after you putdown following keyboards,
"you should search Multi-line and input I 
"and input the string uesd to comment and purdown keyboard <Esc> 
"map <silent><c-k><c-c> <c-v><k>
"imap <silent><c-k><c-c> <Esc><c-v><k>

"--------------- Uncomment Multi-line -----------------------
"after you purdown following keyboards 
"you should search the commenting char in Multi-line and putdown <k>
"and putdown the keyboard <d>
"map <silent><c-k> <c-v><I>
"imap <silent><c-k><c-u> <Esc><c-v><I>
