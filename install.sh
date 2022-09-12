
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

cp -R -p zshrc $CONFIG
cp -R -p alias.sh $CONFIG
cp -R -p bash_profile $CONFIG
cp -R -p exports.sh $CONFIG
cp -R -p fzf.zsh $CONFIG
cp -R -p fzf.bash $CONFIG
cp -R -p gitconfig $CONFIG
cp -R -p ovloop.sh $CONFIG
cp -R -p antigen.zsh $CONFIG
cp -R -p functions.sh $CONFIG
cp -R -p git_diff_wrapper /usr/local/bin
cp -r nvim $CONFIG

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
