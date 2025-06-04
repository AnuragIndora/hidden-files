# Neovim Configuration Features

This document highlights the main features of the Neovim setup configured with modern Lua plugins and key mappings.

---

## Core Features

* **Plugin manager:** Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for fast and easy plugin management.
* **Language Server Protocol (LSP):** Comprehensive LSP support via Mason, lspconfig, and Neoconf for multiple languages.
* **Autocomplete:** Configured with `nvim-cmp` and snippet support using `LuaSnip`.
* **Syntax Highlighting:** Powered by `nvim-treesitter` for accurate and performant parsing.
* **Colorscheme:** Uses the elegant `tokyonight.nvim`.
* **Enhanced language support:** Specialized plugins for TypeScript, Java (via jdtls), C++, and competitive programming.

---

## Plugins Included

* **Plugin Management**

  * `folke/lazy.nvim` — Efficient plugin manager.

* **LSP and Language Support**

  * `williamboman/mason.nvim` & `mason-lspconfig.nvim` — Automated LSP server installation.
  * `neovim/nvim-lspconfig` — LSP configurations for Lua, Rust, C/C++, Python, Go, JavaScript/TypeScript, Java (jdtls), HTML, CSS, JSON, ESLint, Angular, and more.
  * `mfussenegger/nvim-jdtls` — Java Development Tools integration.
  * `pmizio/typescript-tools.nvim` — Advanced TypeScript support.
  * `clangd_extensions.nvim` & `competitest.nvim` — C++ language enhancements and competitive programming tools.

* **Completion and Snippets**

  * `hrsh7th/nvim-cmp` — Autocompletion framework.
  * `L3MON4D3/LuaSnip` — Snippet engine.

* **Syntax Highlighting and Parsing**

  * `nvim-treesitter/nvim-treesitter` — Treesitter for improved syntax highlighting and code understanding.
  * Treesitter auto-tagging for HTML/XML.

* **UI and Colors**

  * `folke/tokyonight.nvim` — Stylish and modern colorscheme.

---

## Key Mappings Summary

### Leader Keys

* **Leader:** `<Space>`
* **Local Leader:** `\`

---

### General Keymaps

| Mode     | Key               | Action                       | Description                     |
| -------- | ----------------- | ---------------------------- | ------------------------------- |
| Normal   | `<leader>w`       | Save file                    | Save the current buffer         |
| Normal   | `<leader>q`       | Quit window                  | Close the current window        |
| Normal   | `<leader>x`       | Save & quit                  | Save and close the buffer       |
| Normal   | `<leader>r`       | Reload config                | Reload Neovim configuration     |
| Normal   | `<leader><space>` | Clear search highlight       | Remove search highlighting      |
| Normal   | `<leader>c`       | Close buffer                 | Close current buffer            |
| Normal   | `<leader>n`       | Toggle relative line numbers | Enable/disable relative numbers |
| Normal   | `<leader>t`       | Open terminal horizontally   | Split window with terminal      |
| Terminal | `<Esc>`           | Exit terminal mode           | Return to normal mode           |

---

### Window Navigation

| Mode   | Key     | Action               | Description           |
| ------ | ------- | -------------------- | --------------------- |
| Normal | `<C-h>` | Move to left window  | Navigate left window  |
| Normal | `<C-j>` | Move to window below | Navigate down window  |
| Normal | `<C-k>` | Move to window above | Navigate up window    |
| Normal | `<C-l>` | Move to right window | Navigate right window |

---

### Window Resizing

| Mode   | Key         | Action          | Description                |
| ------ | ----------- | --------------- | -------------------------- |
| Normal | `<C-Up>`    | Decrease height | Shrink window vertically   |
| Normal | `<C-Down>`  | Increase height | Expand window vertically   |
| Normal | `<C-Left>`  | Decrease width  | Shrink window horizontally |
| Normal | `<C-Right>` | Increase width  | Expand window horizontally |

---

### Buffer Navigation

| Mode   | Key     | Action          | Description               |
| ------ | ------- | --------------- | ------------------------- |
| Normal | `<S-l>` | Next buffer     | Switch to next buffer     |
| Normal | `<S-h>` | Previous buffer | Switch to previous buffer |

---

### Visual Mode Enhancements

| Mode   | Key     | Action                             | Description                          |
| ------ | ------- | ---------------------------------- | ------------------------------------ |
| Visual | `<C-j>` | Move selected lines down           | Move visual block down one line      |
| Visual | `<C-k>` | Move selected lines up             | Move visual block up one line        |
| Visual | `p`     | Paste without overwriting register | Paste over selection without yanking |

---

### Optional Telescope Mappings

*(Enable only if `telescope.nvim` is installed)*

| Mode   | Key          | Action           | Description                |
| ------ | ------------ | ---------------- | -------------------------- |
| Normal | `<leader>ff` | Find files       | Search files via Telescope |
| Normal | `<leader>fg` | Live grep search | Text search in files       |
| Normal | `<leader>fb` | List buffers     | Show open buffers          |
| Normal | `<leader>fh` | Help tags search | Search help documentation  |

---

## Summary

This Neovim configuration offers:

* A **modern and efficient plugin ecosystem** powered by lazy.nvim.
* **Robust LSP and autocomplete setup** covering many programming languages.
* **Convenient and intuitive key mappings** to speed up workflow.
* **Enhanced syntax highlighting and parsing** with Treesitter.
* **Specialized support** for Java, TypeScript, C++, and competitive programming.

---

