set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'godlygeek/csapprox'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'rkulla/pydiction'
Plugin 'msanders/snipmate.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/taglist.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'thinca/vim-quickrun'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()



"设定文件编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"配色风格
"colorscheme desert
"设定行距 GUI 界面中生效
set linespace=2
"auto change dir
set autochdir
set showtabline=0
"设定 GUI 选项
set guioptions=get "m:菜单 T:工具栏 r:右滚动条 L:左滚动条
"set guioptions=grLt
"显示标尺
set ruler
"set cursorline
"自动折行
"set nowrap
set wrap
"按完整单词折行
set nolinebreak
"set linebreak
"行宽(输入时自动插入换行符)
set textwidth=100
set textwidth=0
"允许在 虚空间 内操作 (虚空间:不包含任何文本的空间。如行尾之后)
"set virtualedit=all
"禁止在 虚空间 内操作
set virtualedit=
"设定 Tab 键缩进的空格数
set tabstop=4
"设定编辑器将多少空格视为一个缩进
set shiftwidth=4
"将缩进转换为空格
"set expandtab
"设定自动缩进(新行与前一行缩进相同)
set autoindent
"set noautoindent
"插入模式下,“←”如何删除光标前的字符:行首空白、换行符、插入点之前的字符
set backspace=indent,eol,start
"运行在非兼容(VI)模式下(命令模式下 TAB 补全)
set nocompatible
set hidden "Ctrl Space
"命令行历史纪录
set history=500
"禁用增量搜索
set incsearch
"set noincsearch
"搜索时忽略大小写
set ignorecase
"set noignorecase
"高亮显示搜索结果
set hlsearch
"设定折叠方式
"set foldmethod=manual
"以下字符将被视为单词的一部分 (ASCII):
"set iskeyword+=33-47,58-64,91-96,123-128
set helplang=cn
set number
set autoindent
set smartindent
set foldmethod=syntax
"set foldlevel=100 "启动vim时不要自动折叠代码
set ruler
set showmatch
set nobackup
set nowritebackup

set wildmode=list:full
set wildmenu
set cscopequickfix=s-,c-,d-,i-,t-,e-

"filetype plugin indent on
"set completeopt=longest,menu

"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"

if has('mouse')
	set mouse=a
endif
"if has("gui_running")
""	set guioptions=
"	colorscheme desert
"	"colorscheme zellner
"	set lines=45 columns=100
"	" set font
"	if has("gui_gtk2")
"		set guifont=DejaVu\ Sans\ Mono\ 10
"	elseif has("gui_macvim")
"		set guifont=DejaVu_Sans_Mono:h11
"	elseif has("gui_win32")
"		set guifont=DejaVu_Sans_Mono:h11
"	end
"endif

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
syntax on


"MiniBufExpl mapping
map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>

"navigate windows mapping
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" " Taglist
" "let Tlist_Ctags_Cmd='D:\ctags58\ctags.exe'
" let Tlist_Show_One_File=1 "show current file only
" "let Tlist_Exit_OnlyWindow=1
" let Tlist_File_Fold_Auto_Close=1
" "let Tlist_Use_Right_Window=1
" let Tlist_Show_Menu=1
" "let Tlist_Auto_Open=1
" nmap <silent> tg :TlistToggle<cr>
"
" " NERD-tree settibg for used by winManager
" let g:NERDTree_titile="[NERDTree]"
" function! NERDTree_Start()
" 	exe 'NERDTree'
" endfunction
" 
" function! NERDTree_IsValid()
" 	return 1
" endfunction
" "
" " winManager Setting
" "let g:winManagerWindowLayout="Taglist|FileExplorer"
" let g:winManagerWindowLayout="NERDTree|Taglist,BufExplorer"
" let g:winManagerWidth=30
" nmap <silent> wm :WMToggle<cr>
"
" replace taglist with tagbar
" let g:tagbar_ctags_bin='/bin/ctags.exe'
let g:tagbar_left=1
let g:tagbar_width=30
nmap <silent> tb :TagbarToggle<cr>

" pydiction
" use <TAB> to autocomplete when type something
let g:pydiction_location = '~/.vim/bundle/python-pydiction/complete-dict'
let g:pydiction_menu_height = 3
au FileType python set omnifunc=pythoncomplete#Complete

" python auto-complete code
" Typing the following (in insert mode):
"   os.lis<Ctrl-n>
" will expand to:
"   os.listdir(
" Python 自动补全功能，只需要反覆按 <C-x><C-O> 就行了
"
" make parameter for python
autocmd FileType python setlocal makeprg=python\ %
autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %
nmap <F5> :make<cr>
"nmap json :%!python -m json.tool<cr>  "cause move instruction J slow

"对搜索的设置
map ft :call Search_Word()<CR>:copen<CR>
function Search_Word()
	let w = expand("<cword>") " 在当前光标位置抓词
	execute "vimgrep " w " **"
endfunction

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" CtrlSpace setting
if has("gui_running")
	let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢", "NTM": " ⁺" }
endif
if executable("ag")
	let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

let g:UseNumberToggleTrigger=1

"colorscheme desert
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif

" YouCompleteMe
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
