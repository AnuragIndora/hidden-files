# ⚙️ `.config` Directory – Dotfiles Overview

This repository contains the configuration files (dotfiles) for various Linux desktop applications, window managers, terminal emulators, editors, and other tools. These files are typically located in the `~/.config` directory and help personalize and streamline your Linux development environment.

> ⚠️ **Warning**: Modifying or copying dotfiles without reviewing can cause conflicts or override your current setup. Always back up existing configurations.

---

## 📁 Directory Structure

```bash
~/.config/
├── kitty/             # Kitty terminal configuration
├── nvim/              # Neovim configuration
├── alacritty/         # Alacritty terminal config (if present)
├── i3/ or hypr/       # Tiling window manager (i3, Hyprland, etc.)
├── polybar/           # Polybar status bar
├── rofi/              # Rofi app launcher
├── starship.toml      # Starship prompt configuration
├── zsh/ or fish/      # Shell framework configs
└── ...                # Other user-space application configs
````

Each subdirectory corresponds to a specific application. Below are descriptions of the included configurations.

---

## 📦 Included Configurations

### 🐱 `kitty/`

> Terminal Emulator

* Custom font (`FiraCode Nerd Font`)
* Theme support (`tokyo-night-storm`, `nord`, `one-dark`, etc.)
* Tab and window keybindings
* Blur and transparency support
* Detailed in `kitty/README.md`



## 💾 Installation Guide

To apply your configs:

1. Clone your dotfiles repo:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

2. Symlink configs:

```bash
ln -s ~/.dotfiles/.config/kitty ~/.config/kitty
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
# Repeat for other directories
```

3. Reload the terminal or restart services as needed.

---

## 🧠 Why Use Dotfiles?

* 🛠️ Quickly bootstrap new systems
* 📦 Consistent environment across machines
* 💻 Productivity through customized shortcuts and layouts
* ✨ Aesthetic and readable setup

---

## 🗃️ Related Tools

* [chezmoi](https://www.chezmoi.io/) – Dotfile manager
* [stow](https://www.gnu.org/software/stow/) – Symlink farm manager
* [yadm](https://yadm.io/) – Dotfiles as a Git repo

---

## 🙌 Contributions

Feel free to fork, improve, or suggest new features. Pull requests welcome!

---
