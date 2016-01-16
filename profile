export PATH=/usr/local/mysql/bin:~/bin:$PATH
export CLICOLOR=1
stty -ixon
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ctags='/usr/local/bin/ctags'
alias grep='grep --color'
alias g='git'
alias f='find'
alias cdalot='. /scripts/cdalot'
alias mv='mv -i'
alias cp='cp -i'
alias rm="echo Sorry, rming is not allowed. Use 'del' to move the file to the trash dir, or to really delete the file, use the full path i.e. '/bin/rm'"
alias del="trash-put"
alias ssh_tapio="ssh invincea@172.20.11.191 -t tmux a"
alias ssh_tapio_no_tmux="ssh invincea@172.20.11.191"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

function fh { f . -iname "*$1*"; }
export fh
