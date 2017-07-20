if [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    # Zsh
    ln -s ~/dotfiles/.Xdefaults ~/.Xdefaults
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/.zshrc_base ~/.zshrc_base
    ln -s ~/dotfiles/.zshrc_linux ~/.zshrc_os
    # Xmonad
    ln -s ~/dotfiles/.xmonad ~/.xmonad
    if [ ! -e $HOME/.config ]; then
      mkdir $HOME/.config
    fi
    # i3 Window Manager
    ln -s ~/dotfiles/i3 ~/.config/i3
    # polybar
    ln -s ~/dotfiles/polybar ~/.config/polybar
     # ranger
    ln -s ~/dotfiles/ranger ~/.config/ranger
    # NeoVim
    ln -s ~/dotfiles/nvim ~/.config/nvim
    # ideavim
    ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc
    # Emacs
    if [ ! -e $HOME/.emacs.d ]; then
      mkdir ~/.emacs.d
    fi
    git clone https://github.com/dimitri/el-get.git ~/.emacs.d/el-get/
    ln -s ~/dotfiles/init.el ~/.emacs.d/init.el
    # tmux
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    # stalonetray
    ln -s ~/dotfiles/.stalonetrayrc ~/.stalonetrayrc
if [ "$(expr substr $(uname -s) 1 5)" == 'Darwin' ]; then
    # Zsh
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/.zshrc_base ~/.zshrc_base
    ln -s ~/dotfiles/.zshrc_linux ~/.zshrc_os
    # ranger
    ln -s ~/dotfiles/ranger ~/.config/ranger
    # NeoVim
    ln -s ~/dotfiles/nvim ~/.config/nvim
    # ideavim
    ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc
    # Emacs
    if [ ! -e $HOME/.emacs.d ]; then
      mkdir ~/.emacs.d
    fi
    git clone https://github.com/dimitri/el-get.git ~/.emacs.d/el-get/
    ln -s ~/dotfiles/init.el ~/.emacs.d/init.el
    # tmux
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

