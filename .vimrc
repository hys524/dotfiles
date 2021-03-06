set number
set title
set ambiwidth=double
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set nrformats-=octal
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,start
set ignorecase
set smartcase
set showmatch
set hidden
set autoindent
set magic
set wrapscan
set hlsearch
set ruler
set cindent
set showcmd
set nowrap
set wildmenu wildmode=list:full
set history=9999
set scrolloff=50
set list
set listchars=tab:^\ ,nbsp:_,eol:.,extends:\>,precedes:<
set splitbelow
set splitright
set swapfile
set directory=~/.vim/_swp
set backup
set backupdir=~/.vim/_bak
set clipboard=unnamed
set nrformats=""
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"set cursorcolumn
"highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE
highlight MatchParen ctermfg=NONE ctermbg=red
syntax on
filetype plugin indent on
"colorscheme molokai
colorscheme slate

" <Space><Space> -> <Space>解除
nnoremap <Space><Space> <ESC>
vnoremap <Space><Space> <Space>

" <Space>s -> 置換
nnoremap <Space>s :%s///gc<Left><Left><Left><Left>

" <Space>g -> 文字列を含む行を削除
nnoremap <Space>g :g//d<Left><Left>

" <Space>v -> 文字列を含まない行を削除
nnoremap <Space>v :v//d<Left><Left>

" <Space>h -> 行頭
nnoremap <Space>h ^
vnoremap <Space>h ^

" <Space>l -> 行末
nnoremap <Space>l $
vnoremap <Space>l $

" <Space>a -> 全選択
nnoremap <Space>a gg<S-v>G
vnoremap <Space>a <ESC>gg<S-v>G

" <Space>i -> 適切なインデント位置にカレットを移動
nnoremap <Space>i dd<S-o>

" <Space>; -> セミコロンまで削除
nnoremap <Space>; dt;

" <Space>n -> ハイライトをオフ
nnoremap <Space>n :noh<Enter>

" <Space>w -> ウィンドウ切り替え
nnoremap <Space>w <C-w><C-w>

" <Space><C-y> -> 全行コピー
nnoremap <Space><C-y> myggVGy`y

" <Space><C-l> -> 再描画(カーソル移動に取られた)
nnoremap <Space><C-l> <C-l>

" Y -> カーソル以右コピー
nnoremap Y v$hy

" @ -> q
nnoremap @ q

" q -> @
nnoremap q @

" Enter -> 改行
nnoremap <Enter> <Enter>O<Esc>

" jj -> Esc
inoremap jj <Esc>
cnoremap jj <Esc>

" ; <-> :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" 画面スクロールしてもカレット表示位置を動かさない
"nnoremap <Down> j<C-e>
"nnoremap <Up> k<C-y>
"nnoremap <Left> zhh
"nnoremap <Right> zll

" カーソル移動
"nnoremap j jzz
"nnoremap k kzz
"vnoremap j jzz
"vnoremap k kzz

" 検索次候補でカーソルを画面中央に表示
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz
nnoremap n n<C-g>
nnoremap N N<C-g>
nnoremap * *<C-g>
nnoremap # #<C-g>

" カーソル移動(5行)
"nnoremap <C-h> 5hzz
"vnoremap <C-h> 5hzz
"nnoremap <C-j> 5jzz
"vnoremap <C-j> 5jzz
"nnoremap <C-k> 5kzz
"vnoremap <C-k> 5kzz
"nnoremap <C-l> 5lzz
"vnoremap <C-l> 5lzz
nnoremap <C-h> 5h
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-l> 5l
vnoremap <C-h> 5h
vnoremap <C-j> 5j
vnoremap <C-k> 5k
vnoremap <C-l> 5l

" カーソル移動 <- Backspace
inoremap <C-h> <Left>
" カーソル移動 <- Return
inoremap <C-j> <Down>
" カーソル移動 <- マルチバイト文字を入力("<C-k> ab" = "ば")
inoremap <C-k> <Up>
" カーソル移動 <- Tab
inoremap <C-l> <Right>

" 削除した文字をレジスタに入れない
nnoremap x "_x

" 削除した文字をレジスタに入れる
nnoremap X x

" 範囲選択上書きペーストした際の無名レジスタ更新に対処
nnoremap 0p "0p
vnoremap 0p "0p

" 検索時にエスケープ不要化
nnoremap / /\v
vnoremap / /\v

" Undoツリー
nnoremap U g-
nnoremap <C-R> g+

" 保存せずに終了
nnoremap Zq ZQ
cnoremap ;; q!

" 保存して終了
cnoremap ;' wq

" ファイルタイプ変更
cnoremap ;mmm set filetype=markdown
cnoremap ;mm set filetype=

" 文字コード変更
cnoremap ;encu e ++enc=utf-8<Enter>
cnoremap ;encs e ++enc=shift_jis<Enter>
cnoremap ;ee e ++enc=shift_jis,uft-8,euc-jp

" vimgrep
cnoremap ;grep vimgrep ?? **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" 置換
cnoremap ;s %s///gc<Left><Left><Left><Left>

" 新タブ
cnoremap ;tt tabnew 
cnoremap ;>> +tabmove<Enter>
cnoremap ;<< -tabmove<Enter>

" 保存してからの変更確認
cnoremap ;cc w !diff % -

" 編集ファイル履歴表示
cnoremap ;bb browse oldfiles

" ファイル名、パス表示
cnoremap ;path echo expand("%:p")
cnoremap ;name echo expand("%")

" 現在日時入力
cnoremap ;date r!date +\%Y/\%m/\%d
cnoremap ;time r!date +\%H:\%M:\%S

" 空白行を削除
cnoremap ;kuhaku g/^\s*$/d

" 一時ファイル作成
cnoremap ;temp sp `=tempname()`<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Insert/Commandモードにてクリップボードからペースト
nnoremap <C-r><C-r> <C-r>*
inoremap <C-r><C-r> <C-r>*
cnoremap <C-r><C-r> <C-r>*

" VimPlug更新コマンド
cnoremap pi PlugInstall

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'mkitt/tabline.vim'
call plug#end()

" Setting - tabline.vim
hi TabLine     ctermfg=White ctermbg=Black cterm=NONE
hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
hi TabLineSel  ctermfg=Green ctermbg=Black cterm=NONE

