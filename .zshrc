



export GPG_TTY=$(tty)


alias conservation-on="echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias conservation-off="echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias orphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias v="nvim"
alias rec_a='wf-recorder --audio -g "$(slurp)"'
alias rec='wf-recorder -g "$(slurp)"'
alias scrivania-on="wget -O /dev/null -q 'http://192.168.1.129/?=on'"
alias scrivania-off="wget -O /dev/null -q 'http://192.168.1.129/?=off'"


# replace ls with exa
alias ls='exa'
alias l='exa -l'
alias ll='exa -la'

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

plug "$HOME/.zsh_plugins/aws_comp.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit



# pnpm
export PNPM_HOME="/home/me/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/me/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/me/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/me/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/me/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export DENO_INSTALL="/home/me/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

