export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$HOME/anaconda/bin:/user/bin:/bin:/usr/sbin:/sbin
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.rvm/bin"

ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-syntax-highlighting git extract)
fortune | cowsay | lolcat

source $ZSH/oh-my-zsh.sh  # Oh my zsh
source ~/.fonts/*.sh      # Font maps
source ~/.z.sh            # z Command

autoload -U promptinit; promptinit
prompt pure

alias v="mvim"
alias top="htop"
alias vconf="nvim ~/.config/nvim/init.vim"
alias zconf="nvim ~/.zshrc"
alias hs="history | grep"
alias c="clear"

mcd()   { mkdir $1; cd $1; }
cll()    { cd $1; ll; }
backup() { cp $1{,.bak}; }

