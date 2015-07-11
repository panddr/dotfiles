#!/bin/sh

# brew cask install sublime-text3

SUBLIME_PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
if [[ -e "$SUBLIME_PATH" ]]; then
	sudo ln -s "$SUBLIME_PATH/subl" /usr/local/bin/sublime
fi

# Create symlink for Sublime Text User directory

SUBLIME_PACKAGES_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
SUBLIME_USER_PATH=$SUBLIME_PACKAGES_PATH/User
if [ -d "$SUBLIME_USER_PATH" ]; then # check whether the directory already exists

    if [ -L "$SUBLIME_USER_PATH" ]; then
        echo "Removing old symlink"
        rm "$SUBLIME_USER_PATH"
        echo "...done"
    else
        echo "Moving the existing Sublime Text Users directory from $SUBLIME_USER_PATH to $olddir"
        olddir=~/dotfiles_old
        mkdir -p $olddir
        mv "$SUBLIME_USER_PATH" $olddir
        echo "...done"
    fi
fi
echo "Creating symlink to User in $SUBLIME_USER_PATH"
ln -s $ZSH/sublime/User "$SUBLIME_USER_PATH"
echo "...done"

source $ZSH/sublime/package-control.sh


