if [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    # Zsh
    ln -s ~/dotfiles/.Xdefaults ~/.Xdefaults
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/.zshrc_base ~/.zshrc_base
    ln -s ~/dotfiles/.zshrc_linux ~/.zshrc_os
    # Xmonad
    ln -s ~/dotfiles/.xmonad ~/.xmonad
    # NeoVim
    ln -s ~/dotfiles/nvim ~/.config/nvim
    # ideavim
    ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc
    # Emacs
    mkdir ~/.emacs.d
    git clone https://github.com/dimitri/el-get.git ~/.emacs.d/el-get/
    ln -s ~/dotfiles/init.el ~/.emacs.d/init.el
    # tmux
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    # ranger
    ln -s ~/dotfiles/ranger ~/.config/ranger
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

