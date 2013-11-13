#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles/old             # old dotfiles backup directory
files="alias vimrc zshrc Xresources"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles/old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

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
        sudo -i emerge zsh-completion
        install_zsh
fi
}

install_zsh

# add custom oh_my_zsh config
ln -s $dir/00-zur.zsh ~/.oh-my-zsh/custom/00-zur.zsh

