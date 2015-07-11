SUBLIME_RESOURCES_PATH=/Applications/Sublime\ Text.app/Contents/Resources/
ICON_NAME=Sublime\ Text.icns
TMP_NAME=~/tmp/sublime.icns
echo "Replacing existing Sublime Text icon and moving it to .original"
mv "$SUBLIME_RESOURCES_PATH/$ICON_NAME" "$SUBLIME_RESOURCES_PATH/$ICON_NAME.original"
mkdir -p ~/tmp
curl -o $TMP_NAME https://rawgit.com/div/sublime-icons/master/sublime.icns
mv $TMP_NAME "$SUBLIME_RESOURCES_PATH/$ICON_NAME"
echo "...done"
