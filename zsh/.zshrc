
# Exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=$HOME/flutter/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin

# Plugins
ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
    zsh-syntax-highlighting
    git
    extract
    history
    github
    autojump
    web-search
    osx
)

# Loading
source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

# Alias
alias top="htop"
alias c="clear"
alias tmux-attach="tmux new-session -A -s main"

# Functions
mc()     { mkdir $1; cd $1; }
cl()     { cd $1; ll; }
backup() { cp $1{,.bak}; }

# System specific
source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

