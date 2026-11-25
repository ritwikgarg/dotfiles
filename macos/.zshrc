export PATH="$HOME/.local/bin:$PATH"

# Homebrew, mise (runtime manager), starship prompt
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
command -v mise >/dev/null && eval "$(mise activate zsh)"

# Open buffer line in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

command -v starship >/dev/null && eval "$(starship init zsh)"
