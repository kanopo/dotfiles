# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# setopt nomatch menucomplete
#
alias conservation-on="echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias conservation-off="echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias orphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias v="nvim"
export GPG_TTY=$(tty)

alias rec='wf-recorder --audio -g "$(slurp)"'

alias scrivania-on="wget -O /dev/null -q 'http://192.168.1.129/?=on'"
alias scrivania-off="wget -O /dev/null -q 'http://192.168.1.129/?=off'"

alias latex-recursive="latexmk -pvc -pdf"
#
#
#
# pnpm
export PNPM_HOME="/home/me/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end


if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
