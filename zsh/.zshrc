export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH

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

source $ZSH/oh-my-zsh.sh  # Oh my zsh
source ~/.fonts/*.sh      # Font maps

autoload -U promptinit; promptinit
prompt pure

alias v="mvim"
alias top="htop"
alias vconf="mvim ~/.vimrc"
alias zconf="mvim ~/.zshrc"
alias c="clear"

mc()     { mkdir $1; cd $1; }
cl()     { cd $1; ll; }
backup() { cp $1{,.bak}; }

