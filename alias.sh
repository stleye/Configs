alias developer='cd $DEVELOPER'
alias learning='cd $LEARNING'
alias nodejs='cd $NODEJS'
alias react='cd $REACT'
alias bashProfile='vim ~/.bash_profile'
alias config='cd ~/configs'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ls='ls -lGp'
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias show_options='shopt'                  # Show_options: display bash options settings
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
alias vim="nvim"
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias myip='curl ifconfig.me && echo ""'            # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets

alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

alias kali='ssh kali@192.168.1.136'
