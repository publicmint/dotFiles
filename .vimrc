 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
	set wildmenu " ナビゲーションバー有効
	set autoindent " 自動インデントの有効
	set smartindent " 更に賢いらしいインデントの有効
	set number " 行番号の表示
	set tabstop=4 " インデントのスペース指定
	set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
	set showmatch " 括弧が閉じられたときに対応する括弧をハイライトする
	set incsearch " インクリメンタルサーチをON
	set wrapscan " 循環検索ON
	set cursorline " カレント行のハイライト
	set cursorcolumn "カレント列のハイライト
	set termencoding=utf-8 "vimのコマンド入力などに利用される文字コード
	"set encoding=utf-8 " デフォルトのエンコード
	set fileencoding=utf-8 " ファイルのデフォルトのエンコード
	set backup " バックアップを有効にする
	set backupdir=~/.vim_backups/ "バックアップファイル保存場所の指定
	set directory=~/.vim_backups/ "スワップファイルの保存場所の指定
	set autoread " ファイル変更があった場合に自動再読み込み
	"行末の半角スペースをハイライト
	augroup HighlightTrailingSpaces
			  autocmd!
			    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
				  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
    augroup END
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 "NeoBundleFetch 'https://github.com/mbrochh/vim-as-a-python-ide'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 "
 NeoBundle 'scrooloose/nerdtree'
 "NeoBundle 'w0ng/vim-hybrid'
 "NeoBundle 'Shougo/unite'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


hi LinerNr ctermbg=0 ctermfg=0

"カラースキーマ設定
"colorscheme summerfruit256
"colorscheme hybrid

"syntax enable
"set background=dark
"colorscheme solarized

colorscheme gruvbox
set background=dark
syntax on
