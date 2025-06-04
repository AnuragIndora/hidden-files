local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
    return
end

local actions = require("telescope.actions")

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        }
    }
}

local map = vim.keymap.set
local opts = {noremap = true, silent = true}

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
