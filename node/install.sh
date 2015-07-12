#!/bin/sh

echo "  Installing Node for you."
brew install node --without-npm
# Check for Npm
if test ! $(which npm)
then
  echo "  Installing NPM for you."
  curl -L https://www.npmjs.com/install.sh | sh
fi

if test ! $(which bower)
then
  echo "  Installing bower for you."
  npm install -g bower
fi
