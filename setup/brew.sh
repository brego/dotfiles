#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we have brew, if not, install
hash brew &> /dev/null
if [[ $? -ne 0 ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed


# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget
brew install wget

# Install more recent versions of some OS X tools
brew install vim
brew install grep
brew install screen

# mtr - ping & traceroute. best.
brew install mtr

# allow mtr to run without sudo
mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
sudo chmod 4755 $mtrlocation/sbin/mtr
sudo chown root $mtrlocation/sbin/mtr

# git tools
brew install git
brew install git-recent
brew install git-lfs
brew install git-delta

# Install other useful binaries
brew install ack
brew install imagemagick
brew install node # This installs `npm` too using the recommended installation method
brew install pv
brew install rename
brew install tree
brew install zopfli
brew install ffmpeg
brew install terminal-notifier
brew install jq
brew install bat # better cat
brew install rsync
brew install thefuck
brew install --cask rectangle # replaces Spectacle.app, <https://rectangleapp.com>
brew install pandoc

# https://www.kodiakskorner.com/log/258
brew install sleepwatcher

# LOL
brew install nyancat

# JetBrains Mono font
brew install font-jetbrains-mono

# Fira Code font
brew install font-fira-code

brew install pearcleaner
brew install jordanbaird-ice

# Remove outdated versions from the cellar
brew cleanup
