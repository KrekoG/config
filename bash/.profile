export PS1='\[\033[32;1m\]\u\[\033[m\]@\[\033[33;1m\]\h: \[\033[33;1m\]\w\[\033[m\] [⎇ $(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\n\[\033[32;1m\] └─\t─> \$\[\033[0m\] '
