![image](https://user-images.githubusercontent.com/7681962/222839779-b3949c07-abad-4731-8573-6202d1e2bbda.png)


My TSS Configs

-----

# Tools / Dependencies

## Terminal

### Homebrew

**Install All**: 
```
brew install git vim neovim tmux fzf ripgrep exa bat fd tldr pass bandwich
```
- _Git_:         `brew info git`
- _VIM_:         `brew info vim`
- _NeoVim_:      `brew info neovim`
- _TMUX_:        `brew info tmux`
- _FZF_:         `brew info fzf`
- _RIPGREP_:     `brew info ripgrep`
- _FD_:          `brew info fd`
- _TLDR_:        `brew info tldr`
- _Pass_:        `brew info pass`
- _Bandwich:     `brew info bandwich`

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
