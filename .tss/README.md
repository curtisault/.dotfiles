![image](https://user-images.githubusercontent.com/7681962/222839779-b3949c07-abad-4731-8573-6202d1e2bbda.png)


My TSS Configs

-----

# Tools / Dependencies

## Terminal

### Homebrew

**Install All**: 
```
brew install alacritty git vim neovim tmux fzf ripgrep exa bat fd tldr iproute2mac
```
- _Alacritty_:   `brew install alacritty`
- _Git_:         `brew install git`
- _VIM_:         `brew install vim`
- _NeoVim_:      `brew install neovim`
- _TMUX_:        `brew install tmux`
- _FZF_:         `brew install fzf`
- _RIPGREP_:     `brew install ripgrep`
- _EXA_:         `brew install exa`
- _BAT_:         `brew install bat`
- _FD_:          `brew install fd`
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

Currently no secrets required.
e.g. Github token

The secrets file is used in the alias file to set env vars.
