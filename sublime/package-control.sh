SUBLIME_INSTALLED_PACKAGES_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
SUBLIME_PACKAGE_CONTROL_PATH=$SUBLIME_INSTALLED_PACKAGES_PATH/Package\ Control.sublime-package
if [ ! -f "$SUBLIME_PACKAGE_CONTROL_PATH" ]; then
  echo "Installing Sublime Package Control"
  curl -o "$SUBLIME_PACKAGE_CONTROL_PATH" "https://packagecontrol.io/Package%20Control.sublime-package"
fi
killall "Sublime Text" > /dev/null 2>&1
