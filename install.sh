
rm $HOME/.alias.sh
rm $HOME/.bash_profile
rm $HOME/.gitconfig
rm $HOME/.exports.sh
rm $HOME/.functions.sh
rm $HOME/.fzf.bash
rm $HOME/.fzf.zsh
rm $HOME/.git-completion.bash
rm $HOME/.git-prompt.sh
rm $HOME/.ovloop.sh
rm $HOME/.tmux.conf
rm $HOME/.vimrc
rm $HOME/.vim


ln -s $HOME/configs/alias.sh $HOME/.alias.sh
ln -s $HOME/configs/bash_profile $HOME/.bash_profile
ln -s $HOME/configs/exports.sh $HOME/.exports.sh
ln -s $HOME/configs/functions.sh $HOME/.functions.sh
ln -s $HOME/configs/fzf.bash $HOME/.fzf.bash
ln -s $HOME/configs/fzf.zsh $HOME/.fzf.zsh
ln -s $HOME/configs/git-completion.bash $HOME/.git-completion.bash
ln -s $HOME/configs/git-prompt.sh $HOME/.git-prompt.sh
ln -s $HOME/configs/gitconfig $HOME/.gitconfig
ln -s $HOME/configs/ovloop.sh $HOME/.ovloop.sh
ln -s $HOME/configs/tmux.conf $HOME/.tmux.conf
ln -s $HOME/configs/vimrc $HOME/.vimrc
ln -s $HOME/configs/vim $HOME/.vim
ln -s $HOME/configs/nvim/init.vim $HOME/.config/nvim/init.vim

source ~/.bash_profile
