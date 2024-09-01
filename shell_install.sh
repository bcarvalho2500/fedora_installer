#!/bin/bash

# Install zsh
sudo dnf install zsh --assumeyes

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Make zsh the default shell
chsh -s $(which zsh)

# Download powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Set zsh config
curl https://gist.githubusercontent.com/bcarvalho2500/a761f6dcf5be1b2a1988b1f06f9e4f83/raw/f9477ce9a7bffa55ce8288c30a1101c434ce3e12/.zshrc -H "Cache-Control: no-cache"  -L > ~/.zshrc

# Set the powerlevel10k configuration
curl https://gist.githubusercontent.com/bcarvalho2500/1220ce3c53497b64bdb999b6e8342161/raw/8b18d61900c454c01af14c0c6eab783eca0c43cd/.p10k.zsh -H "Cache-Control: no-cache"  -L > ~/.p10k.zsh

# Install nvm
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'
