return {
    -- Colorscheme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup()
            vim.cmd("colorscheme tokyonight")
        end
    },
    -- LSP & Mason
    {
        "williamboman/mason.nvim",
        config = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({automatic_installation = true})
        end
    },
    -- {
    --     "neovim/nvim-lspconfig",
    --     dependencies = { "folke/neoconf.nvim" },
    --     opts = {
    --         servers = {
    --             lua_ls = {
    --                 settings = {
    --                     Lua = {
    --                         diagnostics = { globals = { "vim" } },
    --                         workspace = {
    --                             library = vim.api.nvim_get_runtime_file("", true),
    --                             checkThirdParty = false,
    --                         },
    --                     },
    --                 },
    --             },
    --             rust_analyzer = {},
    --             clangd = {},
    --             jsonls = {},
    --             pyright = {
    --                 settings = {
    --                     python = {
    --                         analysis = {
    --                             typeCheckingMode = "strict",
    --                             autoSearchPaths = true,
    --                             useLibraryCodeForTypes = true,
    --                         },
    --                     },
    --                 },
    --             },
    --             gopls = {},
    --             html = {},
    --             cssls = {},
    --             emmet_ls = {},
    --             eslint = {},
    --             -- You can add tsserver or ts_ls here if you want too
    --         },
    --     },
    --     config = function(_, opts)
    --         require("neoconf").setup({})
    --         local lspconfig = require("lspconfig")

    --         -- Setup servers from opts.servers
    --         for server, config in pairs(opts.servers) do
    --             config.capabilities = require("cmp_nvim_lsp").default_capabilities()
    --             lspconfig[server].setup(config)
    --         end

    --         -- Angular Language Server setup
    --         lspconfig.angularls.setup({
    --             cmd = {
    --                 "ngserver",
    --                 "--stdio",
    --                 "--tsProbeLocations",
    --                 "",
    --                 "--ngProbeLocations",
    --                 "",
    --             },
    --             on_new_config = function(new_config, _)
    --                 new_config.cmd_env = {
    --                     NG_LANG_SERVER_LOG = "verbose",
    --                     NG_DEBUG = "true",
    --                 }
    --             end,
    --             filetypes = { "typescript", "html", "typescriptreact" },
    --             root_dir = lspconfig.util.root_pattern("angular.json", "project.json"),
    --         })

    --         -- Java Language Server (jdtls) setup
    --         -- This requires you to have 'jdtls' installed and available in PATH
    --         local home = os.getenv("HOME")
    --         lspconfig.jdtls.setup({
    --             cmd = { "jdtls" },
    --             root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew"),
    --             on_attach = function(client, bufnr)
    --                 -- You can add keymaps or settings here specific for Java
    --             end,
    --             workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
    --         })
    --     end,
    -- },

    -- Completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets"
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
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
        end
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {"c", "cpp", "lua", "python", "java", "html", "css", "javascript", "typescript"},
            highlight = {enable = true},
            indent = {enable = true},
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end
    },
    -- Auto Tag
    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },

    -- Java
    {
        "mfussenegger/nvim-jdtls",
        ft = "java",
        config = function()
            local jdtls = require("jdtls")
            local home = os.getenv("HOME")
            local workspace_dir = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
            jdtls.start_or_attach(
                {
                    cmd = {"jdtls"},
                    root_dir = require("jdtls.setup").find_root({".git", "mvnw", "gradlew"}),
                    workspace_folder = workspace_dir
                }
            )
        end
    },
    -- C++ Competitive Programming
    {
        "p00f/clangd_extensions.nvim",
        config = function()
            require("clangd_extensions").setup({})
        end
    },
    {
        "xeluxee/competitest.nvim",
        dependencies = {"MunifTanjim/nui.nvim"},
        config = function()
            require("competitest").setup({runner_ui = {interface = "split"}})
        end
    },
    -- TypeScript tools
    {
        "pmizio/typescript-tools.nvim",
        dependencies = {"nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"},
        opts = {
            settings = {
                tsserver_file_preferences = {
                    includeInlayParameterNameHints = "all",
                    includeCompletionsForModuleExports = true
                }
            }
        }
    },
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
        require("telescope").setup{}
        end,
    },

    -- Auto Paring 
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    }
}
