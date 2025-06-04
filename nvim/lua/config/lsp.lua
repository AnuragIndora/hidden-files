local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Setup servers
local servers = {
    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {globals = {"vim"}},
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false
                }
            }
        }
    },
    rust_analyzer = {},
    clangd = {},
    jsonls = {},
    pyright = {
        settings = {
            python = {
                analysis = {
                    typeCheckingMode = "strict",
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true
                }
            }
        }
    },
    gopls = {},
    html = {},
    cssls = {},
    emmet_ls = {},
    eslint = {}
}

for server, config in pairs(servers) do
    config.capabilities = capabilities
    lspconfig[server].setup(config)
end

-- Angular Language Server setup
lspconfig.angularls.setup(
    {
        cmd = {"ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", ""},
        on_new_config = function(new_config, _)
            new_config.cmd_env = {
                NG_LANG_SERVER_LOG = "verbose",
                NG_DEBUG = "true"
            }
        end,
        filetypes = {"typescript", "html", "typescriptreact"},
        root_dir = lspconfig.util.root_pattern("angular.json", "project.json")
    }
)

-- Java Language Server (jdtls)
local home = os.getenv("HOME")
lspconfig.jdtls.setup(
    {
        cmd = {"jdtls"},
        root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew"),
        workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    }
)
