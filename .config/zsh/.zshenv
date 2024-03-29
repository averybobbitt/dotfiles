# .zshenv
# loaded for all shells
# contains env variables for all shells


# xdg directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# default overrides
export EDITOR="nvim"
export VISUAL="$EDITOR"

# zsh settings
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# pyenv
export PYENV_ROOT="$HOME/.pyenv"

# nvm
export NVM_DIR="$XDG_CONFIG_HOME/nvm"

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# git credential manager
export GCM_PLAINTEXT_STORE_PATH="$XDG_CONFIG_HOME/git/credentials"
