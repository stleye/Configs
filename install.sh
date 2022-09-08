
rm -f $HOME/.alias.sh
rm -f $HOME/.bash_profile
rm -f $HOME/.gitconfig
rm -f $HOME/.exports.sh
rm -f $HOME/.functions.sh
rm -f $HOME/.fzf.bash
rm -f $HOME/.fzf.zsh
rm -f $HOME/.ovloop.sh
rm -f $HOME/.vimrc
rm -f $HOME/.vim

mkdir -p $HOME/.config/custom #Create directory only if it doesn't exist
export CONFIG=$HOME/.config/custom

ln -sF $CONFIG/alias.sh $HOME/.alias.sh
ln -sF $CONFIG/bash_profile $HOME/.bash_profile
ln -sF $CONFIG/exports.sh $HOME/.exports.sh
ln -sF $CONFIG/gitconfig $HOME/.gitconfig
ln -sF $CONFIG/ovloop.sh $HOME/.ovloop.sh
ln -sF $CONFIG/vimrc $HOME/.vimrc
ln -sF $CONFIG/vim $HOME/.vim
ln -sF $CONFIG/nvim $HOME/.config/nvim
ln -sF $CONFIG/functions.sh $HOME/.functions.sh

source ~/.bash_profile
