## Overview

Self configuration files as i occasionally broke my machine.

## Required Packages

- **alacritty** - GPU-accelerated terminal emulator
- **vim** - Text editor
- **rofi** - Application launcher and dmenu replacement
- **i3** - Tiling window manager
- **dunst** - Lightweight notification daemon
- **flameshot** - Screenshot tool
- **zsh** - Shell
- **picom** - Compositor for X11
- **polybar** - Status bar
- **yazi** - Terminal file manager

## Installation

### Clone the repository

```bash
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles
```

### Install required packages

```bash
sudo pacman -S alacritty vim rofi i3 dunst flameshot zsh picom polybar yazi
```

## Post-Installation

1. Set zsh as your default shell:
   ```bash
   chsh -s $(which zsh)
   ```

2. Log out and log back in to apply i3 window manager

3. Press `Mod + Shift + R` to reload i3 configuration
