set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
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
set history=100
set scrolloff=8
colorscheme molokai
syntax on
filetype plugin indent on
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" 

" 無名レジスタに入るヤンクデータを*レジスタにも入れる
"set clipboard=unnamedplus
set clipboard=unnamed

" <Space><Space> -> <Space>解除
nnoremap <Space><Space> <ESC>
vnoremap <Space><Space> <Space>

" <Space>s -> 置換
nnoremap <Space>s :%s///gc<Left><Left><Left><Left>

" <Space>cc -> 1行コメントアウト
nnoremap <Space>c <S-i>//<ESC>

" <Space>cx -> 1行アンコメント
nnoremap <Space>x ^2x<ESC>

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

" @ -> q
nnoremap @ q

" q -> @
nnoremap q @

" Enter -> 改行
nnoremap <Enter> <Enter>O<Esc>

" jj -> Esc
inoremap jj <Esc>

" ; <-> :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" 画面スクロールしてもカレット表示位置を動かさない
nnoremap <Down> j<C-e>
nnoremap <Up> k<C-y>
nnoremap <Left> zhh
nnoremap <Right> zll

" カーソル移動(5行)
nnoremap <C-h> 5h
vnoremap <C-h> 5h
nnoremap <C-j> 5j
vnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-k> 5k
nnoremap <C-l> 5l
vnoremap <C-l> 5l

" <Space><C-l> -> 再描画(カーソル移動に取られた)
nnoremap <Space><C-l> <C-l>

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

" 検索次候補でカーソルを画面中央に表示
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" 範囲選択上書きペーストした際の無名レジスタ更新に対処
nnoremap 0p "0p

" 保存せずに終了
nnoremap Zq ZQ
cnoremap ;; q!

" 保存して終了
cnoremap ;' wq

" ファイルタイプ変更
cnoremap ;md set filetype=markdown
cnoremap ;mm set filetype=

" 文字コード変更
cnoremap ;eu e ++enc=utf-8
cnoremap ;es e ++enc=shift_jis
cnoremap ;ee e ++enc=shift_jis,uft-8,euc-jp

" vimgrep
cnoremap ;grep vimgrep ?? **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" 置換
cnoremap ;s %s///gc<Left><Left><Left><Left>

" 新タブ
cnoremap ;tt tabnew

" 保存してからの変更確認
cnoremap ;cc w !diff % -

" 編集ファイル履歴表示
cnoremap ;bb browse oldfiles

" ファイル名 OR パス表示
cnoremap ;name echo expand("%")
cnoremap ;path echo expand("%:p")

" Insert/Commandモードにてクリップボードからペースト
inoremap <C-r><C-r> <C-r>*
cnoremap <C-r><C-r> <C-r>*

" スワップファイルとバックアップファイル設定
set swapfile
set directory=~/.local/vim/swp
set backup
set backupdir=~/.local/vim/bak

" カレント行ハイライトON
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
set cursorcolumn
highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE

" 括弧ハイライトON
highlight MatchParen ctermfg=NONE ctermbg=red

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

