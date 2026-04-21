#!/bin/bash

# Default target directory is standard Neovim packpath
INSTALL_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/pack/plugins/start/caelestia-nvim"

echo "Installing caelestia-nvim to $INSTALL_DIR..."

# Create directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy all necessary files
cp -r lua "$INSTALL_DIR/"
cp -r colors "$INSTALL_DIR/"
cp README.md "$INSTALL_DIR/"

echo "Installation complete!"
echo "You can now use require('caelestia').setup() or :colorscheme caelestia in your Neovim config."
