#!/bin/bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# Enable bash completion
if [ -f /etc/bash_completion ]; then
   source /etc/bash_completion
fi

# Set prompt
if [ -f "$HOME/.bash_prompt" ]; then
        source "$HOME/.bash_prompt"
fi

# Automatically (de)activate virtualenv if found
function cd() {    
    builtin cd "$1"
    
    if [[ -n "$VIRTUAL_ENV" && ! -d ./.venv ]]; then
        echo "Deactivating virtualenv..."
        deactivate
    fi

    if [[ -z "$VIRTUAL_ENV" && -d ./.venv ]]; then
        echo "Activating virtualenv..."
        source ./.venv/Scripts/activate
    fi
}

# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias l='ls -lAh --color=auto'
