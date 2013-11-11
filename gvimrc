" Отдельные настройки для gvim'a и vim'a                      #gui
if has("gui_running")        " если запущен gvim, то...
    winpos 0 0               " положение окна при запуске
    set guioptions-=T        " убрать панель инструментов
""    set guioptions-=m        " убрать меню
    set guioptions-=l        " убрать левый скроллбар
    set guioptions-=L        " убрать левый скроллбар у сплита
    set guioptions-=r        " убрать правый скроллбар
    set guioptions-=R        " убрать правый скроллбар у сплита
    set mousehide            " не показывать курсор во время печати
    set cursorline           " подсветка строки с курсором
    set linespace=0          " межстрочный интервал
    set guicursor=n:blinkon0 " отключить мигание курсора в нормальном режиме
else                         " если запущен vim, то...
    set t_Co=256             " количество используемых цветов в терминале
endif

" set font only on windows GUI version
if has('gui')
	set guifont=Droid_Sans_Mono:h17
endif

