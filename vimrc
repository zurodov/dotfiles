set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" а дальше уже сами плугины
Bundle 'bling/vim-airline'
Bundle 'talek/vorax'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
"" vim site plugins
Bundle 'tlib'
Bundle 'xptemplate'
Bundle 'earendel'
Bundle 'Align'
Bundle 'SQLUtilities'

set t_Co=256
set background=dark
""colorscheme earendel
let g:solarized_termcolors=256
colorscheme solarized

"" Set a more convinient map leader
let mapleader=','

"" Fast exit from insert mode by pressing jk simultaneously
inoremap jj <Esc>

"" Always show current position
set ruler

"" Set numbering
set nu

"" Command bar height
set cmdheight=2

"" Map to close a window
nnoremap <leader>q <C-w>q

"" Always hide the statusline
set laststatus=2

"" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c

"" Supertab tweaks
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt+=longest
let g:SuperTabLongestEnhanced=1

"" NERDTree configuration
let g:NERDTreeHighlightCursorline = 1
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

let g:vorax_oradoc_open_with="silent! !opera '%u'"

filetype plugin indent on
