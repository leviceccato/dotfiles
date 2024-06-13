# PROMPT

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{green}${PWD/#$HOME/~}%f %F{yellow}${vcs_info_msg_0_}%f
-> '

# ALIASES

alias c="clear"
alias ..="cd .."

# VARIABLES

export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/opt/mysql-client/bin:$PATH
export VISUAL="code"
export EDITOR="code"

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
