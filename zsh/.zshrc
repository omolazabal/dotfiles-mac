
# Exports
export PATH=$PATH:~/.local/bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH
export PATH=/Library/Frameworks/R.framework/Resources/bin/:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export NPM_CONFIG_PREFIX=$HOME/.npm-global
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# Plugins
ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker
    docker-compose
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

# Functions
backup() { cp $1{,.bak}; }
paninit() { cp ~/dotfiles/pandoc/* .; make init;}

# Alias
alias ngrok=$HOME/.ngrok2/ngrok

# Pyenv
eval "$(pyenv init -)"

