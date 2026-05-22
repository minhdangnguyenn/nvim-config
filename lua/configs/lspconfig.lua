-- Load NvChad's default LSP settings (keymaps, capabilities, etc.)
local nvchad_lsp = require("nvchad.configs.lspconfig")
local on_attach = nvchad_lsp.on_attach
local capabilities = nvchad_lsp.capabilities

local lspconfig = require "lspconfig"

-- List all LSP servers you want to use
local servers = { "clangd", "cmake", "rust_analyzer" }

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Override diagnostic display once everything is loaded
vim.schedule(function()
  vim.diagnostic.config({
    virtual_text = {
      prefix = ">>",  -- text shown before the error message
      spacing = 2,    -- space between code and error text
    },
    signs = true,        -- keep sign column icons
    underline = true,    -- underline the error range
    update_in_insert = false,
    severity_sort = true,
  })
end
)

