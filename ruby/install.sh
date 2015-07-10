#!/bin/sh

if test ! $(which chruby)
then
  echo "  Installing chruby for you."
  brew install chruby > /tmp/chruby-install.log
fi

if test ! $(which uby-install)
then
  echo "  Installing uby-install for you."
  brew install ruby-install > /tmp/ruby-install-install.log
fi
