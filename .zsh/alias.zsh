alias tmux='tmux -2'
# alias ls='ls --color'
# alias la='ls -a --color'
# alias ll='ls -al'
alias ls="exa"
alias la="exa -a"
alias ll="exa -al"
alias tree="exa -T"

alias cat='ccat'
alias grep='grep --color'
alias df='df -h'

# cd && ls
setopt auto_cd
function chpwd() { ls }

alias vim='nvim'
alias n='nvim'
alias ni='nvim $NVIM/init.vim'
alias nd='nvim $NVIM/dein.toml'
alias ndl='nvim $NVIM/dein_lazy.toml'
alias ez='exec zsh'
alias ve='source venv/bin/activate'
alias xr='xrdb ~/.Xresources'

# Default Settiing
alias emacs='emacs -nw'
alias e='emacs'
alias ei='e ~/.emacs.d/init.el'

# ArchLinux's alias of packeage manager
alias pss='sudo pacman -Ss'
alias ps='sudo pacman -S'
alias pr='sudo pacman -R'
alias prs='sudo pacman -Rs'
alias psyu='sudo pacman -Syu'
alias yss='yaourt -Ss'
alias ys='yaourt -S'
alias yr='yarout -R'
alias yrs='yaourt -Rs'
alias ysyua='yaourt -Syua'
alias open='xdg-open'

function gi(){
  curl -L -s https://www.gitignore.io/api/$@;
}
