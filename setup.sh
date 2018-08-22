#!/bin/sh

# Install homebrew via curl
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew stuff
brew cask install google-chrome
brew cask install iterm2
brew cask install zsh
brew cask install rambox
brew cask install spectacle
brew cask install spotify
brew cask install java
brew cask install intellij-idea

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Beer is the best way to program
cp beer.zsh-theme $HOME/.oh-my-zsh/themes/beer.zsh-theme
sed -E 's/ZSH_THEME="[a-zA-Z\-_]+"/ZSH_THEME="beer"/' $HOME/.zshrc

# zshell libs
cp -a /lib/. $HOME/.oh-my-zsh/lib

#sdk man
curl -s "https://get.sdkman.io" | bash

# SDKs
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
sdk install groovy
sdk install kotlin
