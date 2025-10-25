#!/usr/bin/env fish

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/homebrew/opt/postgresql@17/bin

if test -f $HOME/.config/fish/functions.fish
    source $HOME/.config/fish/functions.fish
else
    echo "$HOME/.config/fish/functions.fish"
end


if status is-interactive
    # Commands to run in interactive sessions can go here
end

atuin init fish | source
mise activate fish | source
starship init fish | source
