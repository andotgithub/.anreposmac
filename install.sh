
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Path Homebrew
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/andotmac/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Iterm2 > brew install
brew install --cask iterm2

# Install Kitty
brew install --cask kitty

# Install colorls
sudo gem install colorls

# Install Packages
brew install \
    git \
    node \
    starship \
    neovim \
    antibody \
    tmux \
    stow \
    yarn \
    fzf \
    ripgrep \
    bat \
    make \
    gcc \
    direnv

# Stow .anreposterm
stow git
stow nvim
stow tmux
stow starship
stow kitty
stow zsh
stow p10k
stow gitignore
stow ansible

# Add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# Use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Path Starship
# eval "$(starship init zsh)"

# Install neovim plugins (Packer)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install neovim plugins 
nvim --headless +PlugInstall +qall

# If Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty



# Git loc zsh completions and functions have been installed to:
#  /opt/homebrew/share/zsh/site-functions
