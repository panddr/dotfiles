SUBLIME_INSTALLED_PACKAGES_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
SUBLIME_PACKAGE_CONTROL_PATH=$SUBLIME_INSTALLED_PACKAGES_PATH/Package\ Control
if [ ! -d "$SUBLIME_PACKAGE_CONTROL_PATH" ]; then
  echo "Installing Sublime Package Control"
  wget "https://packagecontrol.io/Package%20Control.sublime-package" -O $SUBLIME_INSTALLED_PACKAGES_PATH
  killall "Sublime Text" > /dev/null 2>&1
fi