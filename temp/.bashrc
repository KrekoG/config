# Custom

# Java and Maven

export JAVA_HOME=/usr/lib/jvm/default-java
export PATH="$JAVA_HOME/bin:$PATH"

M2_HOME='/opt/apache-maven-3.9.4'
export PATH="$M2_HOME/bin:$PATH"

# prompt

export PS1='\[\033[32;1m\]\u\[\033[m\]@\[\033[33;1m\]\h: \[\033[33;1m\]\w\[\033[m\] [⎇  $(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\n\[\033[32;1m\] └─\t─> \$\[\033[0m\] '

# H2, headless

function start-h2-headless {
    bash /opt/h2/bin/h2.sh -tcpAllowOthers &
}

# ranger - open the dir your navigated to on exit
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# fuzzy find and edit in vim

function vimf {
    RESULT=$(find ~ -type f | fzf --query "$1")
    if [[ -d ${RESULT} || -f ${RESULT} ]]
    then
        vim "${RESULT}"
    fi
}

alias bat=batcat

# Node Version Manager inserted code, for npm:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux
fi

# Rename tilda tab
function rename-tilda-title {
    echo -e  "\e]2;$1\a  tab --> [$1]"
}

# Add variable for tmux powerline
export XDG_CONFIG_HOME=~/.config

