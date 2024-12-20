# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit

# nvm initialization
source /usr/share/nvm/init-nvm.sh

alias v="nvim"
alias conservation-on="sudo ectool chargecontrol normal 80 80"
alias conservation-off="sudo ectool chargecontrol normal"
# Enable GPG support
export GPG_TTY=$(tty)
