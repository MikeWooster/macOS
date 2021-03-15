# Update the prompt for a cleaner interface.
PROMPT='%~ $ '

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit


# Pyenv with virutalenv configuration.
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if command -v pyenv virtualenv-init 1>/dev/null 2>&1; then
  eval "$(pyenv virtualenv-init -)"
fi
