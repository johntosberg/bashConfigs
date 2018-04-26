#!/bin/sh

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install homebrew via curl
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Beer is the best way to program
cp beer.zsh-theme $HOME/.oh-my-zsh/themes/beer.zsh-theme
sed -E 's/ZSH_THEME="[a-zA-Z\-_]+"/ZSH_THEME="beer"/' $HOME/.zshrc

# Brew stuff
brew cask install google-chrome
brew cask install iterm2
brew cask install rambox
brew cask install spectacle
brew cask install spotify
brew cask install java
brew cask install intellij-idea

#sdk man
curl -s "https://get.sdkman.io" | bash

# SDKs
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
sdk install groovy
sdk install kotlin
