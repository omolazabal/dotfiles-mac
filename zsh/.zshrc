
# Exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH

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
source $ZSH/oh-my-zsh.sh  # Oh my zsh
source ~/.fonts/*.sh      # Font maps
autoload -U promptinit; promptinit
prompt pure

# Start tmux
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux new-session -A -s main
fi

# Alias
alias v="mvim"
alias top="htop"
alias c="clear"
alias vconf="mvim ~/.vimrc"
alias zconf="mvim ~/.zshrc"
alias tconf="mvim ~/.tmux.conf"

# Functions
mc()     { mkdir $1; cd $1; }
cl()     { cd $1; ll; }
backup() { cp $1{,.bak}; }

