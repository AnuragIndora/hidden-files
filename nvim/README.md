# Neovim Configuration

This is a modular Neovim configuration focused on:

* **Performance** with lazy-loading plugins via `lazy.nvim`
* **Modern LSP** support (Lua, Rust, Python, Java, TypeScript, etc.)
* **Enhanced UI** (colorscheme, statusline, line numbers)
* **Treesitter** powered syntax highlighting and indentation
* **Autocompletion** with `nvim-cmp` and snippet support
* **Auto pairs and tags** for seamless editing
* **Competitive programming** plugins and utilities

---

## Table of Contents

* [Installation](#installation)
* [Key Features](#key-features)
* [Configuration Files](#configuration-files)
* [Plugins](#plugins)
* [Keymaps](#keymaps)
* [Customizations](#customizations)
* [Troubleshooting](#troubleshooting)

---

## Installation

1. **Prerequisites:**

   * Neovim 0.8 or later
   * `git`
   * Language servers installed via [mason.nvim](https://github.com/williamboman/mason.nvim) (optional but recommended)

2. **Clone this config** to `~/.config/nvim` or your preferred Neovim config location.

3. **Open Neovim and let `lazy.nvim` bootstrap plugins:**

```bash
nvim
```

4. **Install LSP servers:**

You can install LSP servers automatically or manually via Mason:

```vim
:Mason
```

Install servers like `lua_ls`, `rust_analyzer`, `pyright`, `clangd`, `html`, etc.

---

## Key Features

* **Plugin Management** via `lazy.nvim`
* **LSP & Mason** for language servers and tools
* **Autocompletion** powered by `nvim-cmp` + `LuaSnip`
* **Treesitter** for syntax highlighting, indentation, and auto tags
* **Auto Pairs** with `nvim-autopairs` for brackets, quotes, etc.
* **Colorscheme** with `tokyonight.nvim`
* **Keybindings** for improved workflow
* **Competitive Programming** tools (`clangd_extensions`, `competitest.nvim`)
* **Java Development** support with `nvim-jdtls`

---

## Configuration Files

| File                            | Purpose                                        |
| ------------------------------- | ---------------------------------------------- |
| `init.lua`                      | Entry point, loads main config modules         |
| `lua/config/lazy.lua`           | Plugin management and bootstrap with lazy.nvim |
| `lua/config/options.lua`        | Neovim core options and UI settings            |
| `lua/config/keymaps.lua`        | Custom keybindings                             |
| `lua/config/autocmds.lua`       | Autocommands (e.g., format on save)            |
| `lua/config/plugins.config.lua` | Plugins list and setup                         |
| `lua/config/treesitter.lua`     | Treesitter setup (highlight, indent)           |
| `lua/config/autotag.lua`        | Setup for `nvim-ts-autotag`                    |
| `lua/config/autopairs.lua`      | Setup for `nvim-autopairs`                     |
| `lua/config/telescope.lua`      | Telescope fuzzy finder configuration           |

---

## Plugins

Some highlights include:

* **`folke/tokyonight.nvim`** - Theme
* **`williamboman/mason.nvim`** & `mason-lspconfig.nvim` - LSP installer
* **`neovim/nvim-lspconfig`** - LSP configurations
* **`hrsh7th/nvim-cmp`** - Autocomplete engine
* **`L3MON4D3/LuaSnip`** - Snippets engine
* **`nvim-treesitter/nvim-treesitter`** - Syntax highlighting and code understanding
* **`windwp/nvim-ts-autotag`** - Auto close and rename HTML tags
* **`windwp/nvim-autopairs`** - Auto pairs for brackets, quotes, etc.
* **`mfussenegger/nvim-jdtls`** - Java LSP support
* **`p00f/clangd_extensions.nvim`** - C++ extensions for clangd
* **`xeluxee/competitest.nvim`** - Competitive programming helper
* **`pmizio/typescript-tools.nvim`** - Enhanced TypeScript integration

---

## Keymaps

Custom keybindings include (see `lua/config/keymaps.lua`):

* `<Space>` as leader key
* Window navigation, splits
* Telescope finders
* LSP actions (go to definition, references, rename)
* Autocomplete navigation (Tab, Shift-Tab)
* Formatting and quickfix toggles

---

## Customizations & Tips

* **Auto Format on Save:** Enabled for LSP-supported filetypes via autocmd
* **Clipboard:** System clipboard integrated (`unnamedplus`)
* **Relative line numbers** and **cursor line highlight** enabled
* **Scrolloff** set to 8 for better cursor context
* **Pop-up completion menu** improved with `pumheight` and `completeopt`

---

## Troubleshooting

* **`telescope.actions` module not found?**
  Make sure `telescope.nvim` is installed and updated via `lazy.nvim`.

* **`nvim-ts-autotag` warning about deprecation?**
  Remove `autotag = { enable = true }` from Treesitter config and instead call `require("nvim-ts-autotag").setup()` separately.

* **LSP servers not starting?**
  Install via Mason or your system package manager, and confirm in `:LspInfo`.

---

## Contributing

Feel free to open issues or PRs if you find improvements or bugs!

---
