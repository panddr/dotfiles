#!/bin/sh

if test ! $(which chruby)
then
  echo "  Installing chruby for you."
  brew install chruby > /tmp/chruby-install.log
fi

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install for you."
  brew install ruby-install > /tmp/ruby-install-install.log
fi

RUBY_VERSION=$(cat ~/.ruby-version)
ruby-install ruby $RUBY_VERSION --no-reinstall
source $ZSH/ruby/chruby.zsh
chruby $RUBY_VERSION
gem update --system
gem install bundler
