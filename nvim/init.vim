"=====================dein=======================
"各種ファイルへのパス
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'
let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'
let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml = s:dein_config_dir . '/dein.toml'
let s:toml_lazy = s:dein_config_dir . '/dein_lazy.toml'

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let &runtimepath= s:dein_repo_dir .",". &runtimepath

" dein settings
if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  "Load TOML

  call dein#load_toml(s:toml, {'lazy' : 0})
  call dein#load_toml(s:toml_lazy, {'lazy' : 1})

" finalize
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
syntax on
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1

"ステータスラインを常に表示
set laststatus=2
set showtabline=2
"カラースキーマ設定
set t_Co=256
set background=dark
colorscheme solarized8

let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized_flood'
"let g:airline_solarized_bg='dark'

"インサートモードのときjjでEsc
inoremap jj <Esc>

" settings
"文字コードをUTF-8に設定
set fileencodings=utf-8

"autocmd BufRead,BufNewFile *.c set fileencoding=sjis
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"バッファが編集中でもその他ファイルを開けるように
set hidden
"入力中のコマンドをステータスに表示する
set showcmd


" looks
"行番号を表示
set number
"行末の1文字先までカーソル移動できるように
set virtualedit=onemore
"ビープ音を可視化
set visualbell t_vb=
"コマンドラインの補完
set wildmode=list:longest
"折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" Tab
"不可視文字を可視化
set list listchars=eol:↵,tab:>-
"Tab文字を半角スペースにする
set expandtab
"行頭以外のTab文字の表示幅
set tabstop=2
"行頭でのTab文字の表示幅
set shiftwidth=2
"2文字の表示幅
set softtabstop=2
"前の行のインデントを継続
set autoindent
"インデント時に構文をチェックして増減
set smartindent

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter Colorscheme * hi IndentGuidesOdd  ctermbg=green
autocmd VimEnter Colorscheme *hi IndentGuidesEven ctermbg=darkgrey


" searches
"検索文字列が小文字の場合は区別しない
set ignorecase
"検索文字列に大文字が含まれている場合は区別する
set smartcase
"検索文字列入力時に順次ヒットさせる
set incsearch
"検索時に最後まで行ったら最初に戻る
set wrapscan
"検索語をハイライト表示
set hlsearch
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set viminfo='20,\"1000

