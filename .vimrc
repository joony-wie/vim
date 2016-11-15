syntax enable
set nocompatible
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " " alternatively, pass a path where Vundle should install plugins
 " "call vundle#begin('~/some/path/here')
 " " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 " " The following are examples of different formats supported.
 " " Keep Plugin commands between vundle#begin/end.
 " " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
 " " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " " git repos on your local machine (i.e. when working on your own plugin)
 "Plugin 'file:///home/gmarik/path/to/plugin'
 " " The sparkup vim script is in a subdirectory of this repo called vim.
 " " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " " All of your Plugins must be added before the following line

 call vundle#end()            " required
 filetype plugin indent on    " required
 " " To ignore plugin indent changes, instead use:
 " "filetype plugin on
 " " Brief help
 " " :PluginList       - lists configured plugins
 " " :PluginInstall    - installs plugins; append `!` to update or just
 " " :PluginUpdate
 " " :PluginSearch foo - searches for foo; append `!` to refresh local
 " cache
 " " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 " " see :h vundle for more details or wiki for FAQ


 Plugin 'vim-airline/vim-airline'

 " " Vim에서 파일 탐색기를 사용할 수 있게 한다. - Nerd Tree
 Plugin 'The-NERD-tree'
 " " Vim에서 자동완성 기능(Ctrl + P)을 키입력하지 않더라도 자동으로 나타나게

  " AutoComplPop
  Plugin 'AutoComplPop'
  " " 열려있는 소스파일의 클래스, 함수, 변수 정보 창 - Tag List
  Plugin 'taglist-plus'



  " NERD Tree를 왼쪽에 생성
  let NERDTreeWinPos = "left"
  filetype on
  " " Tag list가 사용하는 ctags의 경로 설정
  let Tlist_Ctags_Cmd = "/usr/bin/ctags"
  let Tlist_Inc_Winwidth = 0
  let Tlist_Exit_OnlyWindow = 0
  let Tlist_Auto_Open = 0
  " " Tag list 창을 오른쪽으로 생성
  let Tlist_Use_Right_Window = 1

  " airline "
  set laststatus=2
  let g:airline#extensions#tabline#enabled = 1


  map  <C-l> :tabn<CR>
  map  <C-h> :tabp<CR>
  map  <C-n> :tabnew<CR>

  " Shift+Enter로 아래줄로 커서 넘기기 기능 "
  map <S-CR> <ESC>o
  map! <S-CR> <ESC>o

  " 괄호 자동 완성 후 입력모드로 전환 "
  "map! () ()<ESC>i
  "map! (); ();<ESC>hi
  "map! [] []<ESC>i
  "map! {} {}<ESC>i
  "map! {}; {};<BS><ESC>i<CR><ESC>O<BS>
  "map! <> <><ESC>i
  "map! '' ''<ESC>i
  "map! "" ""<ESC>i

 "Ctrl+e는 디렉토리 목록 열기, Ctrl+Enter로 파일 선택 후 디렉토리 목록 닫기 "
 map <C-e> :NERDTreeToggle<CR>
 " F5는 TagList 열기 "
 map <F5> :TlistToggle<CR>
 " <F12>은 ctags 생성 "
 map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
 "<F2>키를 누르면 편집중인 파일을 Save,
 "<F9>키를 누르면 편집중인 C소스를 컴파일,
 "<F10>키를 누르면 컴파일한 소스를 실행하기
 map <F2> :w!<CR>
 map <F9> :!gcc %<CR>
 map <F10> :!./a.out<CR>

 set tags+=~/stdlib.tag
 set tags+=/usr/src/linux-headers-4.4.0-45/tags

"============== 주석 매크로 ==============
func! CmtOn()    "주석 on
exe "'<,'>norm i//"
endfunc
func! CmtOff()    "주석 off
exe "'<,'>norm 2x"
endfunc
vmap <c-c> <esc>:call CmtOn() <cr>
vmap <c-x> <esc>:call CmtOff() <cr>
nmap <c-c> <esc>v:call CmtOn() <cr>
nmap <c-x> <esc>v:call CmtOff() <cr>

" 매핑
inoremap jk <ESC>
let mapleader = "\<Space>"
" 태그 설정 
set tags+=~/stdlib.tag
set tagbsearch

syntax on
colorscheme molokai 
"let g:molokai_original = 1
"let g:rehash256 = 1
set number
set ai                    " auto indent
set si                    " smart indent
set cindent            " c style indent
set autoindent
set shiftwidth=4      " shift를 4칸으로 ( >, >>, <, << 등의 명령어)
set tabstop=4         " tab을 4칸으로
set ignorecase      " 검색시 대소문자 구별하지않음
set hlsearch         " 검색시 하이라이트(색상 강조)
set expandtab       " tab 대신 띄어쓰기로
set background=dark  " 검정배경을 사용할 때, (이 색상에 맞춰 문법 하이라이트 색상이 달라집니다.)
set nocompatible   " 방향키로 이동가능
set fileencodings=utf-8,euc-kr    " 파일인코딩 형식 지정
set bs=indent,eol,start    " backspace 키 사용 가능
set history=1000    " 명령어에 대한 히스토리를 1000개까지
set ruler              " 상태표시줄에 커서의 위치 표시
set nobackup      " 백업파일을 만들지 않음
set title               " 제목을 표시
set showmatch    " 매칭되는 괄호를 보여줌
set nowrap         " 자동 줄바꿈 하지 않음
set wildmenu
set showcmd
set laststatus=2
hi Normal ctermbg=none 
