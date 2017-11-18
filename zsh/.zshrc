export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

fortune | cowsay | lolcat

ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-syntax-highlighting git extract)

source $ZSH/oh-my-zsh.sh  # Oh my zsh
source ~/.fonts/*.sh      # Font maps

autoload -U promptinit; promptinit
prompt pure

alias c="code"
alias v="nvim"
alias m="mvim"
alias top="htop"
alias vconf="nvim ~/.config/nvim/init.vim"
alias zconf="nvim ~/.zshrc"
alias hs="history | grep"

runc++ () {
    touch run.sh
    echo "clang++ -std=c++14 \$1\n./a.out\nrm *.out" >> run.sh
    chmod +x run.sh
}

mkcd() {
    mkdir $1
    cd $1
}

export PATH=$PATH:$HOME/anaconda/bin:/user/bin:/bin:/usr/sbin:/sbin
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.rvm/bin"

# Include Z
. ~/.z.sh

