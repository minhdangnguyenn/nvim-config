local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    cpp = { "clang_format" },
  },

   -- configure indent directly here
  formatters = {
    clang_format = {
      args = {
        "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}"
      },
    },
    stylua = {
      args = {
        "--indent-type", "Spaces",
        "--indent-width", "4",
        "-"
      },
    },
  },

  format_on_save = {
  -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
  },
}

return options
