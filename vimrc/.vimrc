set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

 " Note: Skip initialization for vim-tiny or vim-small.
if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
   set runtimepath+=~/.cache/dein/repos/github.com/altercation/solarized/vim-colors-solarized/colors/solarized.vim
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
	"set backup " バックアップを有効にする
	"set backupdir=~/.vim_backups/ "バックアップファイル保存場所の指定
	"set directory=~/.vim_backups/ "スワップファイルの保存場所の指定
	set autoread " ファイル変更があった場合に自動再読み込み
	"行末の半角スペースをハイライト
	augroup HighlightTrailingSpaces
			  autocmd!
			    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
				  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
    augroup END
 " Required:
 call dein#begin(expand('~/.cache/dein/'))

 call dein#add('scrooloose/nerdtree')
 nnoremap <silent><C-e> :NERDTreeToggle<CR>
 call dein#add('tpope/vim-surround')
 call dein#add('Shougo/unite.vim')
 call dein#add('elzr/vim-json')
" call dein#add('Valloric/YouCompleteMe')
 call dein#add('Shougo/vimproc.vim')
 call dein#add('Shougo/vimshell.vim')
 call dein#add('davidhalter/jedi-vim')
 call dein#add('altercation/solarized', { 'script_type': 'colors' })
 call dein#add('morhetz/gruvbox', { 'script_type': 'colors' })
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('chase/vim-ansible-yaml')

 call dein#end()

"プラグインの自動インストール
if has('vim_starting') && dein#check_install()
     call dein#install()
endif

 " Required:
 filetype plugin indent on

hi LinerNr ctermbg=0 ctermfg=0

"カラースキーマ設定
"colorscheme summerfruit256
"colorscheme solarized
colorscheme gruvbox
"colorscheme hybrid
"colorscheme jellybeans
"colorscheme 256-jungle
"colorscheme molokai
"colors solarized


set background=dark

syntax on
if executable('jq')
  function! s:jq(...)
    execute '%!jq' (a:0 == 0 ? '.' : a:1)
  endfunction
  command! -bar -nargs=? Jq  call s:jq(<f-args>)
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

