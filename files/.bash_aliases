# random settings

set -o vi

PATH=$PATH:~/home/bin:/sbin:/usr/local/bin:/opt/puppet/bin

# random aliases

alias grep='grep --colour=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -la'
alias ltr='ls -ltr'
alias vi='vim'
alias tmux="TERM=screen-256color-bce tmux"
alias vms='vmstat 900'
alias downloads='cd ~/Downloads'
alias vupfusion='vagrant up --provider vmware_fusion'
alias vhaltfusion='vagrant halt --provider vmware_fusion'
alias vreloadfusion='vagrant reload --provider vmware_fusion'

alias la='ls -alFh'
alias c='clear'
alias p='pwd'
#alias ip='ifconfig -a'
#alias pu='pushd'
#alias pp='popd'
alias c.='cd ../'
alias c..='cd ../../'
alias h.='cd ~'
#alias gp='ps -axjf|grep'
#alias gh='history|grep'
#alias tr='sudo traceroute -T -p 80'
#alias j='jobs -l'
#alias path='echo -e ${PATH//:/\n}'
#alias psu='command ps -HAcl -F S -A f|uniq -w3'
#alias psa='ps -HAcl -F S -A f'
#alias gpsa='ps -HAcl -F S -A f|grep'
#alias tuna='netstat -tuna'
#alias gtuna='netstat -tuna|grep'

