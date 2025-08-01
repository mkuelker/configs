#!/usr/bin/env bash
set -euo pipefail

# --- Configuration ---
PREFIX="$HOME/mkuelker/docs"
REPO="https://github.com/neovim/neovim.git"
BUILD_TYPE="RelWithDebInfo"

echo "📁 Installing Neovim to: $PREFIX"

# --- 1. Create install directory ---
mkdir -p "$PREFIX"

# --- 2. Install dependencies ---
echo "Installing prerequisites..."
if command -v apt &>/dev/null; then
  sudo apt-get update
  sudo apt-get install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl
elif command -v yum &>/dev/null; then
  sudo yum install -y ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch gettext curl
else
  echo "⚠️ Unknown package manager. Install dependencies manually."
fi

# --- 3. Clone or update Neovim repo ---
if [ -d neovim ]; then
  echo "Updating existing Neovim repo..."
  cd neovim
  git pull
else
  echo "Cloning Neovim repo..."
  git clone "$REPO"
  cd neovim
fi

# --- 4. Clean old build ---
echo "Cleaning previous build (if any)..."
make distclean || true

# --- 5. Build Neovim ---
echo "Building Neovim ($BUILD_TYPE)..."
make CMAKE_BUILD_TYPE=$BUILD_TYPE

# --- 6. Install to target prefix ---
echo "Installing Neovim to $PREFIX..."
make CMAKE_INSTALL_PREFIX="$PREFIX" install

echo -e "\n✅ Done! Launch it via: $PREFIX/bin/nvim"
