-- Use NvChad's default LSP settings (keymaps, capabilities, etc.)
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- List all the servers you want here
local servers = { "clangd", "cmake", "rust_analyzer" }

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- config diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = ">>",   -- symbol stays before error
    spacing = 2,    -- add a space between code and error
  },
  signs = true,      -- keep the signs
  underline = true,  -- unterline error
  update_in_insert = false,
})
