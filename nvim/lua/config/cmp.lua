local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

-- Load vscode-style snippets lazily
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup(
    {
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end
        },
        mapping = cmp.mapping.preset.insert(
            {
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<CR>"] = cmp.mapping.confirm({select = true})
            }
        ),
        sources = {
            {name = "nvim_lsp"},
            {name = "luasnip"}
        }
    }
)

-- Integrate nvim-autopairs with cmp to automatically insert pairs on confirm
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
