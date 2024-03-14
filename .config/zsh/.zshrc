# .zshrc
# loaded on shell start, reloaded every time
# contains shell-specific user customization


# enable p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fix ctrl-arrow keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# zsh completion
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
autoload -U compinit; compinit

# zsh syntax highlighting
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# zsh autosuggestions
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# override default tools for better alternatives
if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
fi

if [ -x "$(command -v batcat)" ]; then
    alias cat="batcat"
elif [ -x "$(command -v bat)" ]; then
    alias cat="bat"
fi

# aliases
alias l="ls -al"
alias ll="ls -algh --icons"
alias lt="ls -lT"
alias zshrc="${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc"
alias zshenv="${=EDITOR} ${ZDOTDIR:-$HOME}/.zshenv"
alias zprofile="${=EDITOR} ${ZDOTDIR:-$HOME}/.zprofile"
alias reload="clear ; exec zsh -l"

# set shell theme
source "$ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme"
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# fix git error
# https://github.com/romkatv/powerlevel10k/issues/1554
unset ZSH_AUTOSUGGEST_USE_ASYNC

# better history
# see https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search # Up
bindkey "$terminfo[kcud1]" down-line-or-beginning-search # Down
