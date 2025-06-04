-- Autocommands example
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local group = augroup("MyAutoCmds", {})

-- Highlight yanked text
autocmd(
    "TextYankPost",
    {
        group = group,
        pattern = "*",
        callback = function()
            vim.highlight.on_yank({timeout = 200})
        end
    }
)

-- Auto source config on save
autocmd(
    "BufWritePost",
    {
        group = group,
        pattern = "init.lua",
        command = "source <afile>"
    }
)

-- Set filetype for some extensions (if needed)
autocmd(
    {"BufRead", "BufNewFile"},
    {
        group = group,
        pattern = "*.mdx",
        command = "set filetype=markdown"
    }
)
