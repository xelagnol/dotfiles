if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
export PATH=/usr/local/mysql/bin:$PATH
export CLICOLOR=1
stty -ixon
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ANDROID_HOME='/Users/alex.long/pu/sdk'
alias ls='ls -GFh'
alias ctags='/usr/local/bin/ctags'
alias grep='grep --color'
alias cdalot='. /scripts/cdalot'
alias ssh_tapio="ssh invincea@172.20.11.191 -t tmux a"
alias ssh_tapio_no_tmux="ssh invincea@172.20.11.191"
