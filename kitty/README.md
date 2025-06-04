# 🐱 Kitty Terminal Configuration

A fully-featured, keyboard-driven, aesthetic configuration for the [Kitty terminal emulator](https://sw.kovidgoyal.net/kitty/), designed for productivity, performance, and style.

---

## ✨ Features

- 🎨 **Custom Themes**: Preconfigured with a curated collection of beautiful color schemes.
- 💻 **Font Customization**: Uses `FiraCode Nerd Font Mono Light` at a comfortable 16pt size.
- 🪟 **Window Management**: Minimal UI with no window decorations and elegant tab styling.
- 🧭 **Keyboard Shortcuts**: Extensive key mappings for tabs, windows, and layout control.
- 🖱️ **Mouse & Scroll**: Smooth scrolling with a high multiplier and optional mouse hiding.
- 🖱️ **Split Borders**: Full control of active/inactive split border appearance and width.
- 🧊 **Optional Transparency & Blur**: Easily toggle transparency and background blur.

---

## 🎨 Theme Collection

Located in your Kitty config folder, you can choose between the following themes:

- `tokyo-night-storm.conf` (default)
- `catppuccin-macchiato.conf`
- `nord.conf`
- `one-dark.conf`
- `pro-hacker.conf`

To change the theme, edit your `kitty.conf` and modify the line:
```bash
include themes/tokyo-night-storm.conf
````

Replace `tokyo-night-storm.conf` with your preferred theme name.

---

## ⌨️ Key Bindings

### 🗂️ Tabs

| Action       | Shortcut           |
| ------------ | ------------------ |
| New tab      | `Ctrl + Shift + T` |
| Close tab    | `Ctrl + Shift + W` |
| Next tab     | `Ctrl + Shift + →` |
| Previous tab | `Ctrl + Shift + ←` |

### 🪟 Windows

| Action               | Shortcut                   |
| -------------------- | -------------------------- |
| New window (split)   | `Ctrl + Shift + Enter`     |
| Next window          | `Ctrl + Shift + ]`         |
| Previous window      | `Ctrl + Shift + [`         |
| Move to window (dir) | `Cmd + Shift + Arrow Keys` |

### 🧱 Layouts

| Action       | Shortcut           |
| ------------ | ------------------ |
| Next layout  | `Ctrl + Shift + L` |
| Tall layout  | `Ctrl + Alt + R`   |
| Stack layout | `Ctrl + Alt + S`   |

---

## 🛠️ Appearance

* **Font**: `FiraCode Nerd Font Mono Light`, size `16.0`
* **Tab Bar**: Hidden, with slanted powerline style and customized titles
* **Cursor**: Block shape, static (non-blinking)
* **Scrollback**: 5000 lines
* **Border & Margin**:

  * Window border: `4px`
  * Window margin: `4px`
  * Split window borders: Enabled with custom colors

---

## 🔧 Additional Settings

* Remote control: `enabled`
* Audio bell: `disabled`
* Mouse auto-hide: `disabled` (`-1` wait)
* Optional background opacity and blur (commented out in default config)

To enable transparency and blur, uncomment:

```ini
# background_opacity 0.9
# background_blur 50
```

---

## 📁 Installation

1. Install [Kitty](https://sw.kovidgoyal.net/kitty/).
2. Clone or copy this configuration to your `~/.config/kitty/` directory.
3. Install the required Nerd Font (e.g. [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)).
4. Restart Kitty or reload config with `Ctrl+Shift+F5`.

---

## 🤝 Contributions

Feel free to fork this config or suggest improvements via PR or issues.

---
