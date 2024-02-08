#!/usr/bin/env bash

# Update system
sudo apt update && sudo apt upgrade -y


# Install packages
pkg=(stow fzf zoxide)
sudo apt install -y "${pkg[@]}"