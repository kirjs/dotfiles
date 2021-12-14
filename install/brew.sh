# Install Homebrew

# TODO(kirjs): COnsider using brewfile
# https://thoughtbot.com/blog/brewfile-a-gemfile-but-for-homebrew
isInFile=$(cat ~/.zprofile | grep -c "brew")

if [ $isInFile -eq 0 ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "brew exists"
fi

brew update
brew upgrade

# Install packages
apps=(
  ag
  dockutil
  fasd
  git
  gh
  httpie
  jq
  mackup
  peco
  ripgrep
  psgrep
  fzf
  shellcheck
  tmux
  tree
  vim
  volta
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
# TODO(kirjs): Figure out why this doens't work
#sudo ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight

apps=(
  alfred
  firefox
  gitup
  #    google-chrome
  # TODO(kirjs): Check out kitty
  #kitty
  iterm2
  keycastr
  opera
  visual-studio-code
  vlc
  #  webstorm
)

brew install "${apps[@]}" --cask
