CHRUBY_PATH=/usr/local/share/chruby
if [[ -e "$CHRUBY_PATH" ]]; then
  # Load chruby
  source "$CHRUBY_PATH/chruby.sh"

  # Automatically switch rubies
  source "$CHRUBY_PATH/auto.sh"

  # Set a default ruby if a .ruby-version file exists in the home dir
  if [[ -f ~/.ruby-version ]]; then
    chruby $(cat ~/.ruby-version)
  fi
fi
