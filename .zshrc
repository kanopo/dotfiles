# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export GPG_TTY=$(tty)

alias conservation-on="echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias conservation-off="echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias orphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias v="nvim"
alias rec_a='wf-recorder --audio -g "$(slurp)"'
alias rec='wf-recorder -g "$(slurp)"'
alias scrivania-on="wget -O /dev/null -q 'http://192.168.1.129/?=on'"
alias scrivania-off="wget -O /dev/null -q 'http://192.168.1.129/?=off'"


# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-history-substring-search"
# plug "zap-zsh/exa"
plug "romkatv/powerlevel10k"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Jump to first letter of previous word
bindkey '^[[1;5D' backward-word

# Jump to first letter of next word or end of line
bindkey '^[[1;5C' forward-word
# Delete the following word
bindkey '^[[3;5~' kill-word
