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

  # GENERAL
  set EDITOR "nvim"
  set TERM "alacritty"
  set VISUAL "nvim"
  set BROWSER "firefox"
  set LANG "en_US.UTF-8"

  # WAYLAND
  set MOZ_ENABLE_WAYLAND 1

  # SWAY
  set XDG_CURRENT_DESKTOP "sway"
  set XDG_SESSION_TYPE "wayland"

  # Disable conda auto activate
  set CONDA_AUTO_ACTIVATE_BASE false
end



# Initialize conda
# WARN: DISABLED FOR BECOMING SLOW, ACTIVATE MANUALLY
# if test -f /usr/bin/conda
#     eval /usr/bin/conda "shell.fish" "hook" $argv | source
# end


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
