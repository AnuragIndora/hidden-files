-- lua/config/keymaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key (already set in your config)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- General keymaps

-- Save file
map("n", "<leader>w", ":w<CR>", opts)

-- Quit
map("n", "<leader>q", ":q<CR>", opts)

-- Save and quit
map("n", "<leader>x", ":x<CR>", opts)

-- Reload config without restarting Neovim
map("n", "<leader>r", ":source $MYVIMRC<CR>", opts)

-- Clear search highlight
map("n", "<leader><space>", ":nohlsearch<CR>", opts)

-- Better window navigation with Ctrl + h/j/k/l
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize windows with Ctrl + arrow keys
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers with Shift + l/h
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Close current buffer
map("n", "<leader>c", ":bd<CR>", opts)

-- Move selected lines up and down in visual mode
map("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Paste over visual selection without yanking it
map("v", "p", '"_dP', opts)

-- Toggle relative number
map("n", "<leader>n", function()
    local relativenumber = vim.wo.relativenumber
    vim.wo.relativenumber = not relativenumber
end, opts)

-- Open a terminal in a horizontal split
map("n", "<leader>t", ":split | terminal<CR>", opts)

-- Exit terminal mode with Esc
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- Telescope mappings (if you install telescope.nvim)
-- Uncomment if telescope is added
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
-- map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

return {}
