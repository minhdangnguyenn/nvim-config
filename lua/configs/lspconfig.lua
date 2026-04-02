require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "cmake" }  -- add cmake here

vim.lsp.enable(
    servers
)
