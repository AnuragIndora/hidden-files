-- lua/config/treesitter.lua

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "lua",
        "python",
        "javascript",
        "typescript",
        "html",
        "css",
        "java",
        "c",
        "cpp"
    },
    highlight = { enable = true },
    indent = { enable = true },
})