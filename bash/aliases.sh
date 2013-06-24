#===============================================================
#
# ALIASES AND FUNCTIONS
#
##===============================================================

# Shortcuts
alias code='cd ~/Code'
alias reload='source ~/.bashrc'
alias path='echo -e ${PATH//:/\\n}'

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# List all files colorized in long format
alias ll="ls -alF"

# List only directories
alias lsd='ll | grep "^d"'

# ----------------------------------------------------------------------
# Safeguards
# ----------------------------------------------------------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

# ----------------------------------------------------------------------
# ls less With DIRCOLORS
# ----------------------------------------------------------------------

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi