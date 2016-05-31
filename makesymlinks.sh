#!/bin/bash
############################
# .makesymlinks.sh
# creates symlinks to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles                        # dotfiles directory
files="alias vimrc zshrc Xresources"  # list of files to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $dir/old for backup of any existing dotfiles in ~"
mkdir -p $dir/old
echo "...done"
if [[ ! -d $HOME/.oracle/ ]]; then
    mkdir $HOME/.oracle/
    cp $dir/tnsnames.ora $HOME/.oracle/
fi

function install_zsh {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh ]; then
# Install oh-my-zsh from GitHub only if it isn't already present
	if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
	   curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	fi
# Set the default shell to zsh if it isn't currently set to zsh
	if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
	   chsh -s $(which zsh)
	fi
else
# If zsh isn't installed, emerge it
        sudo -i emerge gentoo-zsh-completion
        install_zsh
fi
}

install_zsh

# add custom oh_my_zsh config
ln -s $dir/00-zur.zsh ~/.oh-my-zsh/custom/00-zur.zsh

cd $dir
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $dir/old"
    if [[ -f ~/.$file ]]; then
       mv ~/.$file $dir/old/
    fi
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

