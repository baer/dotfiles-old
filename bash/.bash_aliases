#===============================================================
#
# ALIASES AND FUNCTIONS
#
##===============================================================

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias which='type -a'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls)
#-------------------------------------------------------------
#alias ll='ls -l --group-directories-first'
#alias ls='ls -hF --color'  # add colors for filetype recognition
#alias la='ls -Al'          # show hidden files
#alias lx='ls -lXB'         # sort by extension
#alias lk='ls -lSr'         # sort by size, biggest last
#alias lc='ls -ltcr'        # sort by and show change time, most recent last
#alias lu='ls -ltur'        # sort by and show access time, most recent last
#alias lt='ls -ltr'         # sort by date, most recent last
#alias lm='ls -al |more'    # pipe through 'more'
#alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

# If your version of 'ls' doesn't support --group-directories-first try this:
function ll(){ ls -al "$@" ; ls -lXB "$@" 2>&-| \
               egrep -v "^d|total "; }

