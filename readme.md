# Brego's dotfiles - a fork of Paul's dotfiles

## Disclaimer

These are highly personal. Do not blindly use without understanding.

## Installation

### Before installing

Please consider forking this repository. My changes to these scripts are not
always user-friendly.

### Using Git and the bootstrap script

```bash
mkdir ~/Scripts
git clone https://github.com/brego/dotfiles.git ~/Scripts/dotfiles/
cd ~/Scripts/dotfiles
./bootstrap.sh
```

### Git-free install

```bash
mkdir -p ~/Scripts/dotfiles && cd $_
curl -#L https://github.com/brego/dotfiles/tarball/master | tar -xzv --strip-components 1
./bootstrap.sh
```

To update later on, just run `./bootstrap.sh` command again (this will run `git
pull`.)

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./setup/brew.sh
./setup/brew-cask.sh
./setup/osx.sh
./setup/set-computer-name.sh
```
