#Число команд, сохраняемых в файл истории
HISTSIZE=10000
#
##Число команд, сохраняемых в сеансе
SAVEHIST=10000
#
##Дописывание файла истории
setopt  APPEND_HISTORY
#
##Игнорировать повторения команд
setopt  HIST_IGNORE_ALL_DUPS
#
##Игнорировать лишние пробелы
setopt  HIST_IGNORE_SPACE
#
##Удалять пустые строки
setopt  HIST_REDUCE_BLANKS
#
##Исправлять неверно набраные команды
#setopt CORRECT_ALL
#
##Вопрос на автокоррекцию
#SPROMPT='zsh: Исправить '\''%R'\'' на '\''%r'\'' ? [Yes/No/Abort/Edit] '
#
limit stack 8192 # лимит объёма памяти, выделеной под стек, дабы не переполнялся
limit core 0  # Выключаем запись дампов упавших в корку программ
umask 022   # Установка атрибутов доступа создаваемых файлов

DISABLE_CORRECTION="true"

# use /etc/hosts and known_hosts for hostname completion
###[ -r /etc/ssh/ssh_known_hosts ] && _global_ssh_hosts=(${${${${(f)"$(</etc/ssh/ssh_known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _global_ssh_hosts=()
###[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
###[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
hosts=(  "$_global_ssh_hosts[@]"  "$_ssh_hosts[@]"  "$_etc_hosts[@]"  "$HOST"  localhost)
zstyle ':completion:*:hosts' hosts $hosts

TNS_ADMIN=~/.oracle
export TNS_ADMIN

export GEM_HOME=~/.gem/ruby/1.9.1
export GEM_PATH=$GEM_HOME:/usr/lib/ruby/gems/1.9.1
export PATH=$GEM_HOME/bin:$PATH

