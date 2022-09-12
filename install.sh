
rm -f $HOME/.alias.sh
rm -f $HOME/.bash_profile
rm -f $HOME/.gitconfig
rm -f $HOME/.exports.sh
rm -f $HOME/.functions.sh
rm -f $HOME/.fzf.bash
rm -f $HOME/.fzf.zsh
rm -f $HOME/.ovloop.sh
rm -f $HOME/.zshrc
rm -f $HOME/.antigen.zsh

mkdir -p $HOME/.config/custom #Create directory only if it doesn't exist
export CONFIG=$HOME/.config/custom

cp -R zshrc $CONFIG
cp -R alias.sh $CONFIG
cp -R bash_profile $CONFIG
cp -R exports.sh $CONFIG
cp -R fzf.zsh $CONFIG
cp -R fzf.bash $CONFIG
cp -R gitconfig $CONFIG
cp -R ovloop.sh $CONFIG
cp -R antigen.zsh $CONFIG
cp -r nvim $CONFIG
cp -R functions.sh $CONFIG
cp -R -o $CONFIG/git_diff_wrapper /usr/local/bin

ln -sF $CONFIG/zshrc $HOME/.zshrc
ln -sF $CONFIG/alias.sh $HOME/.alias.sh
ln -sF $CONFIG/bash_profile $HOME/.bash_profile
ln -sF $CONFIG/exports.sh $HOME/.exports.sh
ln -sF $CONFIG/fzf.zsh $HOME/.fzf.zsh
ln -sF $CONFIG/fzf.bash $HOME/.fzf.bash
ln -sF $CONFIG/gitconfig $HOME/.gitconfig
ln -sF $CONFIG/ovloop.sh $HOME/.ovloop.sh
ln -sF $CONFIG/antigen.zsh $HOME/.antigen.zsh
ln -sF $CONFIG/nvim $HOME/.config/nvim
ln -sF $CONFIG/functions.sh $HOME/.functions.sh

source ~/.bash_profile
