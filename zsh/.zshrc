export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-syntax-highlighting git extract)

source $ZSH/oh-my-zsh.sh  # Oh my zsh
source ~/.fonts/*.sh  # Font maps

autoload -U promptinit; promptinit
prompt pure

alias v="nvim"
alias vconf="nvim ~/.config/nvim/init.vim"
alias matlab="/Applications/MATLAB_R2017a.app/bin/matlab"
alias cowsay="fortune | cowsay | lolcat"

export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
export PATH=$PATH:$HOME/anaconda/bin:/user/bin:/bin:/usr/sbin:/sbin
export PATH="$PATH:$HOME/.rvm/bin"

# Include Z
. ~/.z.sh

