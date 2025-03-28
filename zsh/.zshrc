# Created by Zap installer
# zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit

PROXY_HTTP="http://127.0.0.1:7897"
export http_proxy="${PROXY_HTTP}"
export https_proxy="${PROXY_HTTP}"

alias v="nvim"
alias gs="git status"
alias la="ls -a"
alias ll="ls -la"
alias lg="lazygit"
alias hx=helix
alias zed=zeditor

set -o vi
bindkey '^R' history-incremental-search-backward

export PATH="$PATH:$(go env GOPATH)/bin:/home/aaron/.cargo/bin"
