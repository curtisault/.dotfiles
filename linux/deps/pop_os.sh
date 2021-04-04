sudo apt update && sudo apt upgrade

# install haskell for xmonad but also for HLS
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

sudo apt install suckless-tools curl vim neovim && \
sudo apt install zsh

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# xmonad + xmobar
sudo apt install xmonad libghc-xmonad-contrib-dev libghc-xmonad-wallpaper-dev xmobar

