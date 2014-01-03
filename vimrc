
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Менеджер плагинов                    #vundle "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " We don't want vi compatibility.

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" github plugins
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'talek/vorax4'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'vimwiki/vimwiki'
Bundle 'vim-scripts/bash-support.vim'
"" vim site plugins
Bundle 'L9'
Bundle 'tlib'
Bundle 'xptemplate'
Bundle 'earendel'
Bundle 'Align'
Bundle 'SQLUtilities'
Bundle 'bufexplorer.zip'
""Bundle 'minibufexplorerpp'

filetype plugin indent on " завершение настроек Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Общие настройки                       #main "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on      " Automatically detect file types.
filetype indent on

augroup myvimrc     " autoreload .vimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc so $MYVIMRC
augroup END

let s:us_portable = 1 " не использовать зависимостей

set acd  " autochangedir - директория зависит от открытого файла    #currentdir

" Поддержка команд при включённой русской раскладке
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set lz                         " включает lazyredraw, даёт прирост производительности

set backspace=indent,eol,start " с чем будет работать клавиша backspace
set virtualedit=onemore        " возможность перемещения за конец строки
set clipboard=unnamedplus      " использовать системный буфер обмена
set undolevels=1000            " максимальное количество уровней отмены изменений
set history=1000               " How many lines of history to remember


" Работа с файлами
set ffs=unix,dos,mac           " Set default file format
set fileencodings=utf-8,cp1251,koi8-r,cp866 " приоритет подбора возможных кодировок файла
set termencoding=utf-8         " Кодировка терминала, должна совпадать с той, которая используется для вывода в терминал
set encoding=utf-8             " кодировка по умолчанию
set autoread                   " автоматически перезагружать файлы, изменённые извне
set nobackup                   " No backups file. Use a source control system.
set noswapfile                 " отключить своп-файлы

set shortmess=atI              " shorten command-line text and other info tokens
set title                      " Set title automatically
set wildmenu                   " включить меню выбора
set wcm=<Tab>                  " переключение элементов меню
set wildmode=list:longest,full " отображать меню в виде полного списка

" Файлы, которые будут игнорироваться в wildmenu
if has("wildignore")
    set wildignore+=*.a,*.o,*.pyc
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore+=*.avi,*.mp4,*.mp3,*.ogg
    set wildignore+=*.zip,*.rar,*.tar,*.iso,*.7z,*.bz2
    set wildignore+=*.pdf,*.djvu,*.doc,*.odt,*.xsl,*.rtf
    set wildignore+=.DS_Store,.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp,*.bak
endif

" Enable syntax colloring
syntax enable

set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Set a more convinient map leader
let mapleader=','

"" Fast exit from insert mode by pressing jk simultaneously
inoremap jj <Esc>

" Fast saving
nmap <leader>w :w!<cr>

" See context for the current line
set scrolloff=5

" Don't make windows equal after a split
set noea

" Set a faster tty
set ttyfast

"" Always show current position
set ruler

"" Set numbering
set number

"" Long lines
set textwidth=80
set colorcolumn=+1

"" Command bar height
set cmdheight=1

" Change buffer without saving
set hidden

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search things
set hlsearch

" Incremental search please
set incsearch

" We want magic for regular expressions
set magic

" Показывать незавершённые команды в статусбаре
set showcmd

" We don't like noise on errors
set noerrorbells
set novisualbell
set t_vb=

" Switch to paste mode
set pastetoggle=<F2>

" Remap : to space
nnoremap <space> :

" Don't move your fingers to arrow keys for history
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

" Clear highlighting after search
nmap <silent> ,, :nohlsearch<cr>

" Set tabbing
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set shiftround

" Auto indent
set autoindent
set copyindent

" Smart indent
set smartindent

" No wrap
set nowrap

" Convenient maps for moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Expand/Shrink pane
map <C-Up> <C-W>+
map <C-Down> <C-W>-
map <C-Left> <C-W><
map <C-Right> <C-W>>

" Switch to alternate file
map <leader>b :bnext<cr>
map <C-S-Tab> :bprevious<cr>

"" BufExplorer mappings
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i
"
" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" Map to close a window
nnoremap <leader>q <C-w>q

" Always hide the statusline
set laststatus=2

set ttimeoutlen=50        " airline speed-up hack

"" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c

" Abreviation for inserting the current timestamp at the cursor position
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"" Supertab tweaks
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt+=longest
let g:SuperTabLongestEnhanced=1

"" NERDTree configuration
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1
map <leader>ff :NERDTreeToggle<CR>
let NERDTreeMapJumpPrevSibling = ''
let NERDTreeMapHelp = 'H'

"" avoid key conflict
let g:SuperTabMappingForward = '<Plug>supertabKey'

"" if nothing matched in xpt, try supertab
let g:xptemplate_fallback = '<Plug>supertabKey'

"" xpt uses <Tab> as trigger key
let g:xptemplate_key = '<Tab>'

"" use <tab>/<S-tab> to navigate through pum. Optional
let g:xptemplate_pum_tab_nav = 1

"" xpt triggers only when you typed whole name of a snippet. Optional
let g:xptemplate_minimal_prefix = 'full'

"" Navigate through xptemplate placeholders
let g:xptemplate_nav_next = '>>'
let g:xptemplate_nav_prev = '<<'

"" Don't like blanks for brackets
let g:xptemplate_brace_complete = ''
let g:xptemplate_vars = "SParg="

" Taglist configuration
let Tlist_Auto_Update=1 
let Tlist_Show_One_File = 1
nmap <silent> <leader>tt :TlistToggle<cr>

" remap this in order to avoid the warning from Align plugin
if !hasmapto('<Plug>AM_tt') | map <unique> <Leader>ttt <Plug>AM_tt | endif

" SQL Format mapping
let g:sqlutil_align_comma = 1
xmap <silent> <leader>fo :SQLUFormatter<cr>

" Open VoraX documentation in screen
let g:vorax_oradoc_open_with="silent! !opera '%u'"

let g:vorax_resultwin_clear = 0
let g:vorax_key_for_exec_buffer = "<F8>"
let g:vorax_key_for_exec_sql = "<Leader>e"
let g:vorax_key_for_exec_one = "<Leader>1"
let g:vorax_key_for_describe = "<Leader>d"
let g:vorax_key_for_describe_verbose = "<Leader>D"
let g:vorax_key_for_explain_plan = "<C-F5>"
let g:vorax_key_for_explain_only = "<S-F5>"
let g:vorax_key_for_fuzzy_search = "??"
let g:vorax_key_for_goto_def = "gd"
let g:vorax_key_for_toggle_logging = "<Leader>l"

" Nice notification for my monitored long runinng queries
function VoraxNotification()
  let cmd = "notify-send -i 'terminal' 'VoraX' 'Execution of your monitored statement on ". 
    \ &titlestring . " has just finished.'" 
  exe 'silent! !' . cmd
endfunction
let g:vorax_notify_command = "call VoraxNotification()"

" set visualedit for results window
au WinEnter vorax-results set ve=all
au WinLeave vorax-results set ve= 

" Define mapping for invoking Command-T
nmap <unique> <silent> <leader>f/ :CommandT<CR>
let g:CommandTAcceptSelectionSplitMap='<C-w>' 

" More items in the fuzzy search list
let g:fuf_enumeratingLimit = 300

" Help in a new tab. Instead of :help use :h
:cabbrev h tab h

" Configure ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Configure showmarks
highlight default link hlShowMarks Todo
nnoremap <leader>m :ShowMarksOnce<CR>

" Matching brackets with blink
set showmatch
hi MatchParen cterm=none ctermbg=254 ctermfg=red 

" Configure bufferlist
""noremap <silent> <leader>b :TSelectBuffer<cr>
""inoremap <silent> <leader>b :TSelectBuffer<cr> 
""let g:tselectbuffer#autopick=0

" A convenient map for zoom-in/zoom-out window
nnoremap <silent> <Leader><Space> :ZoomWin<CR>

" Execute a file which has a shebang
function! RunShebang()
  if (match(getline(1), '^\#!') == 0)
    :silent! !chmod u+x ./%
    :!./%
  else
    echo "No shebang in this file."
  endif
endfunction
map <F9> :call RunShebang()<CR>

" let g:vimwiki_list = [{'path': '~/vimwiki/', 'auto_export': 1}]

    let wiki_1 = {}
    let wiki_1.path = '~/vimwiki/'
    let wiki_1.path_html = '~/vimwiki/html'
    let wiki_1.auto_export = '1'

    let wiki_2 = {}
    let wiki_2.path = '~/vimwiki.pri/'
    let wiki_2.path_html = '~/vimwiki.pri/html'
    let wiki_2.auto_export = '1'

    let g:vimwiki_list = [wiki_1, wiki_2]
    let g:vimwiki_url_maxsave = 42

" Airline customisation
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  "let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
" figitive integration
  let g:airline#extensions#branch#enabled = 1
