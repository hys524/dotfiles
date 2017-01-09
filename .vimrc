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
colorscheme molokai
syntax on
filetype plugin indent on
"nnoremap ; :
let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7" 

"無名レジスタに入るヤンクデータを*レジスタにも入れる
set clipboard=unnamed
set clipboard=unnamedplus

" <Space><Space> -> <Space>解除
nnoremap <Space><Space> <ESC>
vnoremap <Space><Space> <Space>

" <Space>s -> 置換
nnoremap <Space>s :%s///gc

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
nnoremap <Enter> o<Esc>

" 画面スクロールしてもカレット表示位置を動かさない
nnoremap <C-e> j<C-e>
nnoremap <C-y> k<C-y>

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

" source C:\Users\egmainex\_vsvimrc
