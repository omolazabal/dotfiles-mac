ln -s tmux/.tmux.conf ~/.tmux.conf
ln -s vim/.vimrc ~/.vimrc
ln -s zsh/.zshrc ~/.zshrc
ln -s zsh/.zshrc-Linux ~/.zshrc-Linux
ln -s zsh/.zshrc-Darwin ~/.zshrc-Darwin

OS="`uname`"
case $OS in
    'Linux')
        ln -s vscode/settings.json ~/.config/Code/User/settings.json
        ln -s vscode/keybindings.json ~/.config/Code/User/keybindings.json

        sudo apt-get install zsh
        chsh -s $(which zsh)
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        npm install --global pure-prompt

        sudo apt-get install vim
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim -c ":PlugInstall" %~/.vconf -c ":qa"

        sudo apt-get install tmux
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        tmux source ~/.tmux.conf
        ;;
    'Darwin')
        ln -s vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
        ln -s vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

        brew install zsh zsh-completions
        chsh -s $(which zsh)
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        npm install --global pure-prompt

        brew install vim && brew install macvim
        brew link macvim
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim -c ":PlugInstall" %~/.vconf -c ":qa"

        brew install tmux
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        tmux source ~/.tmux.conf
        ;;
esac
