
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/oscar/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
# Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time ssh status root_indicator history time)
# Path length
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# Time icon
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
# Move prompt to newline
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Change name/hostname format
POWERLEVEL9K_CONTEXT_TEMPLATE="%n [`hostname`]"
# Use awesome-font iconts
POWERLEVEL9K_MODE="awesome-fontconfig"

# Set default user
DEFAULT_USER="oscar"
# Hyphen insensitive completion
HYPHEN_INSENSITIVE="true"
# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Plugins
plugins=(git extract command-not-found)

# Source oh my zsh
source $ZSH/oh-my-zsh.sh
# Source font maps
source ~/.fonts/*.sh

# Include Z
. ~/.z.sh

export PATH=$HOME/anaconda3/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin"
