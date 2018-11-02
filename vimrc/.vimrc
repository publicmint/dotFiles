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
	set wildmenu " $B%J%S%2!<%7%g%s%P!<M-8z(B
	set autoindent " $B<+F0%$%s%G%s%H$NM-8z(B
	set smartindent " $B99$K8-$$$i$7$$%$%s%G%s%H$NM-8z(B
	set number " $B9THV9f$NI=<((B
	set tabstop=4 " $B%$%s%G%s%H$N%9%Z!<%9;XDj(B
	set whichwrap=b,s,h,l,<,>,[,] " $B%+!<%=%k$r9TF,!"9TKv$G;_$^$i$J$$$h$&$K$9$k(B
	set showmatch " $B3g8L$,JD$8$i$l$?$H$-$KBP1~$9$k3g8L$r%O%$%i%$%H$9$k(B
	set incsearch " $B%$%s%/%j%a%s%?%k%5!<%A$r(BON
	set wrapscan " $B=[4D8!:w(BON
	set cursorline " $B%+%l%s%H9T$N%O%$%i%$%H(B
	set cursorcolumn "$B%+%l%s%HNs$N%O%$%i%$%H(B
	set termencoding=utf-8 "vim$B$N%3%^%s%IF~NO$J$I$KMxMQ$5$l$kJ8;z%3!<%I(B
	"set encoding=utf-8 " $B%G%U%)%k%H$N%(%s%3!<%I(B
	set fileencoding=utf-8 " $B%U%!%$%k$N%G%U%)%k%H$N%(%s%3!<%I(B
	"set backup " $B%P%C%/%"%C%W$rM-8z$K$9$k(B
	"set backupdir=~/.vim_backups/ "$B%P%C%/%"%C%W%U%!%$%kJ]B8>l=j$N;XDj(B
	"set directory=~/.vim_backups/ "$B%9%o%C%W%U%!%$%k$NJ]B8>l=j$N;XDj(B
	set autoread " $B%U%!%$%kJQ99$,$"$C$?>l9g$K<+F0:FFI$_9~$_(B
	"$B9TKv$NH>3Q%9%Z!<%9$r%O%$%i%$%H(B
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

"$B%W%i%0%$%s$N<+F0%$%s%9%H!<%k(B
if has('vim_starting') && dein#check_install()
     call dein#install()
endif

 " Required:
 filetype plugin indent on

hi LinerNr ctermbg=0 ctermfg=0

"$B%+%i!<%9%-!<%^@_Dj(B
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

