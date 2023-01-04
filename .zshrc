

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias conservation-on="echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias conservation-off="echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias orphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias v="nvim"
export GPG_TTY=$(tty)

alias rec='wf-recorder --audio -g "$(slurp)"'

alias scrivania-on="wget -O /dev/null -q 'http://192.168.1.129/?=on'"
alias scrivania-off="wget -O /dev/null -q 'http://192.168.1.129/?=off'"

alias latex-recursive="latexmk -pvc -pdf"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/me/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/me/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/me/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/me/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

