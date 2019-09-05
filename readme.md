# Brego's dotfiles - a fork of [Paul Irish][1]'s dotfiles

## Disclaimer

These are highly personal. Do not blindly use without understanding. Please
consider forking this repository.

## Installation

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

To update later on, just run `./bootstrap.sh` command again.

### Sensible OS X defaults

When setting up a new Mac, set sensible OS X defaults:

```bash
./setup/brew.sh
./setup/osx.sh
./setup/set-computer-name.sh
```

[1]: https://github.com/paulirish/dotfiles
