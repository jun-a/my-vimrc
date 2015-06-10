"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース2つ分に設定
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####ステータスバーの設定#####
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"背景色黒
"highlight Normal ctermbg=black ctermfg=grey
""アンダーライン設定
set cursorline
"マウス操作有効
set mouse=a
" カラースキーマの指定
"colorscheme desert
" 行番号の色
highlight LineNr ctermfg=darkyellow

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
" """"""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" """"""""""""""""""""""""""""""

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-u> :Unite<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
if has('vim_starting')
		  set nocompatible               " Be iMproved

		    " Required:
			  set runtimepath+=~/.vim/bundle/neobundle.vim/
			  endif

			  " Required:
			  call neobundle#begin(expand('~/.vim/bundle/'))

			  " Let NeoBundle manage NeoBundle
			  " Required:
			  NeoBundleFetch 'Shougo/neobundle.vim'

			  " ファイルオープンを便利に
			  NeoBundle 'Shougo/unite.vim'
			  " Unite.vimで最近使ったファイルを表示できるようにする
			  NeoBundle 'Shougo/neomru.vim'
			  " ...省略
			  " ファイルをtree表示してくれる
			  NeoBundle 'scrooloose/nerdtree'
         " Ruby向けにendを自動挿入してくれる
        NeoBundle 'tpope/vim-endwise'
        "ctrl+Vで選択部分を決めて gccで コメントON/OFFを手軽に実行
        NeoBundle 'tomtom/tcomment_vim'
        "シンタックスのエラーを表示する
         NeoBundle 'scrooloose/syntastic.git'
			 " Rails向けのコマンドを提供する
         NeoBundle 'tpope/vim-rails'

       call neobundle#end()

			  " Required:
			  filetype plugin indent on

			  " If there are uninstalled bundles found on startup,
			  " this will conveniently prompt you to install them.
			  NeoBundleCheck
