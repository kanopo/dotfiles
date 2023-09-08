if status is-interactive
  # Commands to run in interactive sessions can go here
  set fish_greeting ""
  set EDITOR "nvim"

  # Alias
  alias v "nvim"
  alias ls "exa"
  alias ll "exa -l"
  alias la "exa -a"
  alias cat "bat"


  set MOZ_ENABLE_WAYLAND 1
  set EDITOR "nvim"
  set TERM "alacritty"
  set VISUAL "nvim"
  set BROWSER "firefox"
  set LANG "en_US.UTF-8"
  set XDG_CURRENT_DESKTOP "sway"
  set XDG_SESSION_TYPE "wayland"
end



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /usr/bin/conda
    eval /usr/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

