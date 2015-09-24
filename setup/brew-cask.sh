#!/bin/bash

# Install applications using Homebrew Cask

# Make sure we have brew, if not, install
hash brew &> /dev/null
if [[ $? -ne 0 ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install Homebrew Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Utils
brew cask install spectacle
brew cask install dropbox
brew cask install gyazo
brew cask install transmission
brew cask install alfred
brew cask install paparazzi
brew cask install caffeine
brew cask install name-mangler

# Development
brew cask install atom
brew cask install iterm2
brew cask install imagealpha
brew cask install imageoptim
brew cask install transmit
brew cask install dash
brew cask install acorn

# Browsers
brew cask install chromium
brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install firefox
brew cask install firefox-nightly
brew cask install webkit-nightly
brew cask install opera

# Media
brew cask install vlc
brew cask install spotify
brew cask install beamer

# Remove outdated versions from the cellar
brew cleanup
brew cask cleanup
