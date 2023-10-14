# My Simple .bashrc file for Tumbleweed.
# Will hide the username in screenshots and place a bogus domain (WhoAmI@Bahamut)
# The line just above was at Fenrir and is using rainbow colors, which could be
#  uncommented to use (just comment the second line if needed).

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.

test -s ~/.alias && . ~/.alias || true

#Add some alias for ls and grep

alias ls='ls --color'
alias grep='grep --color'


#Add Time to PS1 with [\033[0;32m\]\t]
#PS1='\[\033[0;35m\]Who\[\033[1;35m\]AmI\[\033[0;34m\]@Fen\[\033[0;32m\]rir\[\0>
PS1='\[\033[1;36m\](WhoAmI@Bahamut)\[\033[00m\]:[\w]>'
