export ANDROID_PATH=~/Library/Android/sdk
export ANDROID_HOME=$ANDROID_PATH
export KANGO=~/toptal/UCapture/kango-framework/kango.py
export PATH=/usr/local/mysql/bin:~/bin:$ANDROID_PATH/platform-tools:$ANDROID_PATH/tools/:$HOME/toptal/Zugata/arcanist/bin:$PATH
export CLICOLOR=1
stty -ixon
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export HISTTIMEFORMAT="%d/%m/%y %T "
export EDITOR=vim
alias ls='ls -GFh'
alias a='ag'
alias ctags='/usr/local/bin/ctags'
alias grep='grep --color'
alias g='git'
alias f='find'
alias cdalot='. /scripts/cdalot'
alias mv='mv -i'
alias cp='cp -i'
alias rm="echo Sorry, rming is not allowed. Use 'del' to move the file to the trash dir, or to really delete the file, use the full path i.e. '/bin/rm'"
alias del="trash-put"
alias vim='/usr/local/bin/vi'
alias vi='/usr/local/bin/vi'
alias v='/usr/local/bin/vi'
alias s='~/bin/livesearch'

function fh { f . -iname "*$1*"; }
export fh
