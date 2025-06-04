local opt = vim.opt
local g = vim.g

-- Leader key (redundant if also set in lazy.lua but harmless)
g.mapleader = " "
g.maplocalleader = "\\"

-- Tabs & Indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4 -- Number of spaces per TAB
opt.shiftwidth = 4 -- Indentation amount
opt.softtabstop = 4 -- Backspace respects tabstop
opt.smartindent = true -- Smart auto-indentation

-- UI
opt.number = true -- Show absolute line numbers
opt.relativenumber = true -- Show relative line numbers
opt.cursorline = true -- Highlight current line
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.signcolumn = "yes" -- Always show sign column
opt.scrolloff = 8 -- Keep lines above/below cursor
opt.wrap = false -- Don't wrap long lines
opt.showmode = false -- Hide -- INSERT -- etc.
opt.laststatus = 3 -- Global statusline

-- Search
opt.ignorecase = true -- Case-insensitive search...
opt.smartcase = true -- ... unless there's a capital letter
opt.hlsearch = true -- Highlight search matches
opt.incsearch = true -- Show match while typing

-- Clipboard & Mouse
opt.mouse = "a" -- Enable mouse
opt.clipboard = "unnamedplus" -- Use system clipboard

-- File Handling
opt.undofile = true -- Persistent undo
opt.swapfile = false -- No swap files
opt.backup = false -- No backup files

-- Completion
opt.completeopt = {"menu", "menuone", "noselect"} -- Better autocompletion menu

-- Split windows
opt.splitbelow = true -- Horizontal splits below
opt.splitright = true -- Vertical splits to the right

-- Performance
opt.timeoutlen = 400 -- Faster key sequences
opt.updatetime = 200 -- Faster CursorHold updates

-- Appearance
opt.colorcolumn = "120" -- Highlight column 120 (coding style)
opt.pumheight = 10 -- Pop-up menu height

-- Invisible characters
opt.list = true
opt.listchars = {
    tab = "→ ",
    trail = "·",
    extends = "⟩",
    precedes = "⟨",
    nbsp = "␣"
}

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
