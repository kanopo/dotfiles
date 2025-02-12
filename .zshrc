# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "zsh-users/zsh-syntax-highlighting"
plug "wintermi/zsh-lsd"
plug "romkatv/powerlevel10k"
plug "zap-zsh/nvm"


# Load and initialise completion system
autoload -Uz compinit
compinit

# nvm initialization
source /usr/share/nvm/init-nvm.sh

alias v="nvim"
alias conservation-on="sudo ectool chargecontrol normal 80 80"
alias conservation-off="sudo ectool chargecontrol normal"
alias orphans="sudo pacman -Qtdq | sudo pacman -Rns -"


# Enable GPG support
export GPG_TTY=$(tty)

set -o vi
bindkey "^A" vi-beginning-of-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH="/opt/miniconda3/bin:$PATH"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
