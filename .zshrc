# Basic shell setup
autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

# Aliases
alias ll='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tipi='xrandr --output eDP-1 --off --output HDMI-1 --mode 1920x1080 --rate 60 --primary'
alias lzd='lazydocker'

# Default editor and pager
export EDITOR="vim"
export VISUAL="vim"
export LESS='-R --use-color -Dd+r$Du+b$'

# Completion
zstyle ':completion:*' menu select

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTORY_IGNORE='(rm *|pkill *)'
HISTFILE="$HOME/.zsh_history"

setopt HIST_FCNTL_LOCK
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY

# Yazi integration
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Go environment
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
