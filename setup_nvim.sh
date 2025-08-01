#!/usr/bin/env bash

set -e
set -o pipefail

# Step 1: Install build prerequisites
sudo apt update && sudo apt install -y \
    ninja-build gettext cmake unzip curl build-essential git

# Step 2: Clone and build Neovim from source
echo "Cloning Neovim source..."
git clone https://github.com/neovim/neovim.git /tmp/neovim-src
cd /tmp/neovim-src
make CMAKE_BUILD_TYPE=Release
sudo make install

# Step 3: Copy init.lua from this repo to ~/.config/nvim/
echo "Copying init.lua config..."
mkdir -p "$HOME/.config/nvim"
cp "$(pwd)/../nvim/init.lua" "$HOME/.config/nvim/init.lua"

echo "✅ Neovim installed and configured."
