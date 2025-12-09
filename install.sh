#!/bin/bash

# Vulti Installer
# Installs vulti to ~/.local/bin by default

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VULTI_SRC="$SCRIPT_DIR/vulti"

# Colors
NC='\033[0m'
GREEN='\033[0;32m'

echo -e "Installing Vulti..."

# Ensure install dir exists
mkdir -p "$INSTALL_DIR"

# Check if vulti exists in current dir
if [[ ! -f "$VULTI_SRC" ]]; then
    echo "Error: vulti script not found in $SCRIPT_DIR"
    exit 1
fi

# Make executable
chmod +x "$VULTI_SRC"

# Create symlink (better for development) or copy?
# Let's offer a flag, but default to copy for "install" behavior, 
# or symlink for "dev" behavior. 
# For this simple script, a symlink is great if they keep the source code.
# But standard install usually copies.
# Let's just copy for now to be safe, or symlink if --dev is passed.

if [[ "$1" == "--dev" ]]; then
    echo "Linking $VULTI_SRC to $INSTALL_DIR/vulti"
    ln -sf "$VULTI_SRC" "$INSTALL_DIR/vulti"
else
    echo "Copying to $INSTALL_DIR/vulti"
    cp "$VULTI_SRC" "$INSTALL_DIR/vulti"
fi

echo -e "${GREEN}Success!${NC} You can now run 'vulti' from anywhere."
echo "Ensure $INSTALL_DIR is in your PATH."
