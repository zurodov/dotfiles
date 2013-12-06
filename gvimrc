" Отдельные настройки для gvim'a и vim'a                      #gui
if has("gui_running")        " если запущен gvim, то...
    winpos 0 0               " положение окна при запуске
    set guioptions-=T        " убрать панель инструментов
"    set guioptions+=m        " убрать меню
    set guioptions-=l        " убрать левый скроллбар
    set guioptions-=L        " убрать левый скроллбар у сплита
    set guioptions-=r        " убрать правый скроллбар
    set guioptions-=R        " убрать правый скроллбар у сплита
    set guioptions-=e        " Отключаем графические табы
    set mousehide            " не показывать курсор во время печати
    set cursorline           " подсветка строки с курсором
    set linespace=0          " межстрочный интервал
    set guicursor=n:blinkon0 " отключить мигание курсора в нормальном режиме
else                         " если запущен vim, то...
    set t_Co=256             " количество используемых цветов в терминале
endif

set clipboard+=unnamed

" set font only on windows GUI version
if has('gui')
	set guifont=Droid\ Sans\ Mono\ 17
endif

" Меню - по умолчанию скрыто
    set guioptions-=m

    " Горячие клавиши скрытия/отображения меню -->
        function MyToggleMenu()
            let old_guioptions = &guioptions

            " Если меню в данный момент видимо
            if stridx(old_guioptions, 'm') != -1
                set guioptions-=m
            else
                set guioptions+=m
            endif
        endfunction

        cmap <F12> <ESC>:call MyToggleMenu()<CR>
        imap <F12> <ESC>:call MyToggleMenu()<CR>
        nmap <F12> :call MyToggleMenu()<CR>
        vmap <F12> <ESC>:call MyToggleMenu()<CR>
    " Горячие клавиши скрытия/отображения меню <--
" Меню <--
