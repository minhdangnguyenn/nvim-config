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

-- Cấu hình cách hiển thị diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",   -- ký hiệu đứng trước lỗi, có thể đổi thành "" hay ">>"
    spacing = 2,    -- khoảng cách giữa code và lỗi
  },
  signs = true,      -- vẫn giữ chữ E, W ở cột trái
  underline = true,  -- gạch chân chỗ có lỗi
  update_in_insert = false,
})
