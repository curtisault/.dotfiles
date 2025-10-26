![image](https://user-images.githubusercontent.com/7681962/222839779-b3949c07-abad-4731-8573-6202d1e2bbda.png)


# Dotfiles

My personal development environment configuration files.

## Dependencies

All dependencies can be installed via Homebrew:

```bash
brew install git vim neovim tmux fish ghostty fzf ripgrep fd tldr pass bandwich starship tlrc tmux-mem-cpu-load curl mise age sops lnav yazi ncdu
```

## Tools Overview

### Core Tools

**[Git](https://git-scm.com/)**
- Version control system
- Essential for managing these dotfiles and all development work

**[Vim](https://www.vim.org/) / [Neovim](https://neovim.io/)**
- Terminal-based text editors
- Neovim is a modern fork with better plugin architecture and LSP support
- Configuration: `.vimrc` / `~/.config/nvim/`

**[Tmux](https://github.com/tmux/tmux)**
- Terminal multiplexer for session management
- Enables persistent terminal sessions and split panes
- Configuration: `.tmux.conf` (sources `~/.config/tmux/tmux.conf`)

**[Fish](https://fishshell.com/)**
- Friendly interactive shell with modern features
- Auto-suggestions and syntax highlighting out of the box
- Configuration: `~/.config/fish/config.fish`

**[Ghostty](https://ghostty.org/)**
- Fast, native, feature-rich terminal emulator
- GPU-accelerated with excellent performance
- Configuration: `~/.config/ghostty/config`

**[tmux-mem-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load)**
- System monitoring for tmux status bar
- Displays CPU, memory, and load average
- Integrates directly into tmux configuration

**[curl](https://curl.se/)**
- Command-line tool for transferring data with URLs
- Essential for API interactions and downloads
- Supports numerous protocols (HTTP, HTTPS, FTP, etc.)

### Search & Navigation

**[fzf](https://github.com/junegunn/fzf)**
- Fuzzy finder for command-line
- Powers file search, command history search, and more
- Integrates with vim/neovim and shell

**[ripgrep (rg)](https://github.com/BurntSushi/ripgrep)**
- Ultra-fast recursive text search tool
- Respects `.gitignore` by default
- Modern replacement for `grep`

**[fd](https://github.com/sharkdp/fd)**
- Fast and user-friendly alternative to `find`
- Simpler syntax with sensible defaults
- Great integration with fzf

**[yazi](https://github.com/sxyazi/yazi)**
- Blazing fast terminal file manager
- Written in Rust with vim-like keybindings
- Image preview support and async I/O

**[ncdu](https://dev.yorhel.nl/ncdu)**
- NCurses Disk Usage analyzer
- Interactive way to explore disk space usage
- Faster and more intuitive than `du`

### Development Tools

**[mise](https://mise.jdx.dev/)**
- Polyglot runtime manager (successor to asdf)
- Manages versions of Node.js, Python, Ruby, etc.
- Fast, written in Rust
- Configuration: `~/.config/mise/config.toml`

### Documentation & Help

**[tldr](https://github.com/tldr-pages/tldr)**
- Simplified man pages with practical examples
- Community-driven documentation
- Usage: `tldr <command>`

**[tlrc](https://github.com/tldr-pages/tlrc)**
- Fast Rust implementation of tldr client
- Drop-in replacement with better performance

### Security & Monitoring

**[pass](https://www.passwordstore.org/)**
- Unix password manager using GPG encryption
- Stores passwords in encrypted files
- Git-friendly for syncing across machines

**[age](https://github.com/FiloSottile/age)**
- Modern, simple file encryption tool
- Replacement for GPG for file encryption
- Used by SOPS for encryption

**[sops](https://github.com/getsops/sops)**
- Secrets OPerationS - encrypted file editor
- Works with YAML, JSON, ENV, INI files
- Integrates with age, GPG, cloud KMS
- Only encrypts values, leaves keys readable

**[bandwhich](https://github.com/imsnif/bandwhich)**
- Terminal bandwidth monitoring tool
- Shows current network utilization by process
- Useful for debugging network issues

**[lnav](https://lnav.org/)**
- Advanced log file viewer
- Automatic format detection and syntax highlighting
- SQL queries on log data
- Merges and displays multiple log files

### Shell Enhancement

**[Starship](https://starship.rs/)**
- Fast, customizable shell prompt
- Works with bash, zsh, fish, and more
- Shows git status, language versions, and more
- Configuration: `~/.config/starship.toml`

## Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install dependencies:**
   ```bash
   brew install git vim neovim tmux fish ghostty fzf ripgrep fd tldr pass bandwich starship tlrc tmux-mem-cpu-load curl mise age sops lnav yazi ncdu
   ```

3. **Set up fzf shell integration:**
   ```bash
   $(brew --prefix)/opt/fzf/install
   ```

4. **Link dotfiles** (adjust paths as needed):
   ```bash
   ln -sf ~/dotfiles/.vimrc ~/.vimrc
   ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
   ln -sf ~/dotfiles/tmux ~/.config/tmux
   ln -sf ~/dotfiles/nvim ~/.config/nvim
   ln -sf ~/dotfiles/fish ~/.config/fish
   ln -sf ~/dotfiles/ghostty ~/.config/ghostty
   ln -sf ~/dotfiles/mise ~/.config/mise
   ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
   ```

5. **Initialize pass** (if using):
   ```bash
   gpg --gen-key  # Generate GPG key if you don't have one
   pass init "your-gpg-key-id"
   ```

6. **Add Starship to your shell:**
   
   For **fish** (add to `~/.config/fish/config.fish`):
   ```bash
   starship init fish | source
   ```
   
   For **zsh** (add to `~/.zshrc`):
   ```bash
   eval "$(starship init zsh)"
   ```
   
   For **bash** (add to `~/.bashrc`):
   ```bash
   eval "$(starship init bash)"
   ```

7. **Set Fish as default shell** (optional):
   ```bash
   # Add fish to allowed shells
   echo $(which fish) | sudo tee -a /etc/shells
   
   # Change default shell
   chsh -s $(which fish)
   ```

8. **Activate mise** (add to `~/.config/fish/config.fish`):
   ```bash
   mise activate fish | source
   ```

## Quick Usage Guide

### fzf
```bash
# Search files
fzf

# Search in command history
Ctrl+R

# Change directory
Alt+C
```

### ripgrep
```bash
# Search for pattern in files
rg "pattern"

# Search in specific file types
rg "pattern" -t py
```

### fd
```bash
# Find files by name
fd filename

# Find files by extension
fd -e md
```

### tmux
```bash
# Start new session
tmux new -s session-name

# List sessions
tmux ls

# Attach to session
tmux attach -t session-name
```

### pass
```bash
# Add password
pass insert email/gmail

# Retrieve password
pass email/gmail

# Generate random password
pass generate email/work 20
```

### bandwhich
```bash
# Monitor bandwidth (requires sudo)
sudo bandwhich
```

### yazi
```bash
# Launch file manager
yazi

# Navigate with vim keys (h/j/k/l)
# Preview files with arrow keys
```

### ncdu
```bash
# Analyze current directory
ncdu

# Analyze specific directory
ncdu /path/to/dir
```

### mise
```bash
# Install a tool
mise use node@20

# List installed tools
mise list

# Update all tools
mise upgrade
```

### sops
```bash
# Encrypt a file with age
sops -e -age <age-public-key> file.yaml > file.enc.yaml

# Edit encrypted file
sops file.enc.yaml

# Decrypt file
sops -d file.enc.yaml
```

### lnav
```bash
# View log files
lnav /var/log/*.log

# View with live updates
lnav -t /var/log/syslog
```

## Customization

Modify the configuration files in this repository to suit your preferences:

- `.vimrc` - Vim configuration
- `.tmux.conf` - Tmux root configuration (sources `~/.config/tmux/tmux.conf`)
- `tmux/tmux.conf` - Main tmux configuration
- `nvim/` - Neovim configuration
- `fish/config.fish` - Fish shell configuration
- `ghostty/config` - Ghostty terminal configuration
- `mise/config.toml` - Mise runtime version manager configuration
- `starship.toml` - Starship prompt configuration

## Updating

Keep your tools up to date:

```bash
brew upgrade
tldr --update  # Update tldr cache
```

## License

MIT

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements.
