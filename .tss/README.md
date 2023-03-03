![image](https://user-images.githubusercontent.com/7681962/222839536-2f5cf512-a54d-4060-bc00-6eedb00f7a3d.png)

My TSS Configs

-----

# Tools / Dependencies

## Terminal

### Homebrew

**Install All**: 
```
brew install alacritty vim neovim ctags tmux fzf ripgrep exa bat fd nextdns tldr iproute2mac
```
- _Alacritty_:   `brew install alacritty`
- _VIM_:         `brew install vim`
- _NeoVim_:      `brew install neovim`
- _CTAGS_:       `brew install ctags` (Not used anymore. Maybe should prolly remove.)
- _TMUX_:        `brew install tmux`
- _FZF_:         `brew install fzf`
- _RIPGREP_:     `brew install ripgrep`
- _EXA_:         `brew install exa`
- _BAT_:         `brew install bat`
- _FD_:          `brew install fd`
- _NextDNS_:     `brew install nextdns`
- _TLDR_:        `brew install tldr`
- _iproute2mac_: `brew install iproute2mac`

**Show All**: `brew list`

-----

# Aliases

Be sure to import into `.zshrc` file:
```
if [ -f ~/.alias ]; then
  source ~/.alias
else
  print "404: ~/.alias not found."
fi
```

# Secrets

A secrets file is required. You have to create this locally and store values given to you there.
e.g. Github token

The secrets file is used in the alias file to set env vars.
