##
## Load dotfiles
##
# ~/.local_profile can be used for settings you don’t want to commit
for file in $HOME/.{local_profile,bash_prompt,exports,aliases,functions,history}; do
  [ -r "$file" ] && source "$file"
done
unset file;

##
## better `cd`'ing
##

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null


# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ${HOME}/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# GIT completion (included in this package)
source "$HOME/.git-completion.sh"

# docker-compose completion (included in this package)
source "$HOME/.docker-compose-completion.sh"


# bash-completion2
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


export BASH_SILENCE_DEPRECATION_WARNING=1
