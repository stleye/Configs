
source $HOME/.exports.sh
source $HOME/.alias.sh
source $HOME/.functions.sh
source $HOME/.ovloop.sh

export PKG_CONFIG_PATH="$(brew --prefix)/opt/libffi/lib/pkgconfig:$(brew --prefix)/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
alias python=python3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sebastian/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sebastian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sebastian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sebastian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#export PS1="\h:\w $ "