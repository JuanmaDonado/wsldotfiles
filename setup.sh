#!/usr/bin/env bash

# Update system
# sudo apt update && sudo apt upgrade -y



# Install apt packages
pkg=(stow fzf zoxide zsh)
# sudo apt install -y "${pkg[@]}"

# Set zsh as default
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh syntax highlighting

# TODO INSTALL POWERLEVEL10K
# https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation

# Investigate zsh4humans

# Install fish
# sudo apt install fish
# chsh -s /usr/bin/fish  

# Install pyenv and latest Python version
# sudo apt install build-essential libssl-dev zlib1g-dev \
# libbz2-dev libreadline-dev libsqlite3-dev curl \
# libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
# curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(pyenv init -)"' >> ~/.zprofile

# # TODO Add pyenv to bashrc
# source ~/.bashrc

# pyenv install 3
# pyenv global 3

# Install nvm and LTS node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts
nvm use --lts

