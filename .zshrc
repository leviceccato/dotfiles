# PROMPT

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{green}${PWD/#$HOME/~}%f %F{yellow}${vcs_info_msg_0_}%f
➤ '

# ALIASES

alias c="clear"
alias d="cd"
alias ..="cd .."
alias lg="lazygit"
alias zj="zellij"
# Only alias these if the program is installed
if command -v bat > /dev/null; then
  alias cat="bat"
fi
if command -v lsd > /dev/null; then
  alias ls="lsd"
fi
if command -v wezterm > /dev/null; then
  alias icat="wezterm imgcat"
fi

function most {
  if tmux has-session -t most 2>/dev/null; then
    echo "Session already exists"
  else
    tmux new -d -s most
    tmux send-keys -t most "cd ~" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/localdev" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/most-api-service" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/most-client-app" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/accounts-api-service" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/accounts-client-app" Enter
    tmux neww -t most
    tmux send-keys -t most "cd ~/survey-api-service" Enter
    tmux select-window -t most @1
    tmux attach -d -t most
  fi
}

# VARIABLES

export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/opt/mysql-client/bin:$PATH
export VISUAL="hx"
export EDITOR="hx"

# Mello
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Bun
[ -s "/Users/lececcato/.bun/_bun" ] && source "/Users/lececcato/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Direnv, this was required for setting up survey-api-service
eval "$(direnv hook zsh)"
