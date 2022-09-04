function color_my_prompt {
	local __user_and_host="\[\033[01;32m\]\u@\h"
	local __cur_location="\[\033[01;34m\]\w"
	local __git_branch_color="\[\033[93m\]"
	local __git_branch='$(__git_ps1 "[%s]")'
	local __prompt_tail="\[\033[35m\]$"
	local __last_color="\[\033[00m\]"
	export PS1="$__cur_location$__git_branch_color$__git_branch$__prompt_tail$__last_color "
}

function gbD() {
	for BRANCH in $(git branch | grep -E $1); do
		git branch -D $BRANCH
	done
}

function gch() {
	git branch | grep -E $1 | xargs git checkout 
}

mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

#findPid: find out the pid of a specified process
#-----------------------------------------------------
#   Note that the command name can be specified via a regex
#   E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#   Without the 'sudo' it will only find processes of the current user
#-----------------------------------------------------
findPid () { lsof -t -c "$@" ; }

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }