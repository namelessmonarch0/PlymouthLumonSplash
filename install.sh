#!/bin/bash

# Lumon Plymouth Theme Installer

THEME_NAME="lumon"
THEME_DIR="/usr/share/plymouth/themes/$THEME_NAME"

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

echo "Installing Lumon Plymouth Theme..."

# Create theme directory
mkdir -p "$THEME_DIR"

# Copy files
cp ./*.png "$THEME_DIR/"
cp ./lumon.plymouth "$THEME_DIR/"
cp ./lumon.script "$THEME_DIR/"

# Set the theme
if command -v plymouth-set-default-theme &> /dev/null; then
    echo "Setting $THEME_NAME as the default theme..."
    plymouth-set-default-theme -R "$THEME_NAME"
    echo "Done! The theme has been set and initramfs has been updated."
else
    echo "Error: plymouth-set-default-theme not found. Please install plymouth."
    exit 1
fi

echo "Installation complete."
