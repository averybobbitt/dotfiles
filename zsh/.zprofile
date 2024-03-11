# .zprofile
# loaded on login, only loaded once
# contains configuration for all shells that only need to be loaded once
# (like .zshrc but only loaded on login)


# initialize pyenv
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# initialize nvm
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" 

# initialize carge (rust)
source "$HOME/.cargo/env"

# initialize go
export PATH="/usr/local/go/bin:$PATH"
