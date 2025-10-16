
# Environment variables
export EDITOR=hx
export STARSHIP_CONFIG="/home/sergio/.config/starship/starship.toml"
export PATH="$HOME/.npm-global/bin:$PATH"



# Aliases
# This file edit
alias hb='hx ~/.bashrc'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Git
alias gst='git status'
alias gl='git pull'
alias ga='git add .'
alias gc='git commit -m'
alias gp='ssh-add ~/.ssh/mi-nix-git && git push'
alias gs='git switch'

# System
alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias shtdn='shutdown now'
alias swaylo='swaymsg exit'
alias sus='systemctl suspend'

# User apps and shortcuts
alias ya='yazi'
alias sbrc='source ~/.bashrc'

# Package ops
alias nrs='sudo nixos-rebuild switch'
alias ncfg='sudoedit /etc/nixos/configuration.nix'

# ssh-add git
alias sg='ssh-add ~/.ssh/mi-nix-git'

# Custom scripts
alias wppr='~/.config/sway/wallpapers/random-wallpaper.sh'

# Starting ssh-agent if not already running
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s | grep -v '^echo Agent pid')"
fi

_zoxide_starship_init() {
    eval "$(starship init bash)"
    eval "$(zoxide init bash)"
}
_zoxide_starship_init
