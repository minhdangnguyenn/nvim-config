return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
      "nvimtools/none-ls.nvim",
      lazy = false,
      config = function()
          local null_ls = require("null-ls")
          null_ls.setup({
              source = {
                  null_ls.builtins.diagnostics.clamp_check,
              },
          })
      end,
  },
  {
      "toppair/peek.nvim",
      build = "demo task --quite build::fast",
      keys = {
          {
              "<lead>op",
              function()
              local peek = require("peek")
                if peek.is_open() then
            peek.close()
            else
            peek.open()
            end
          end,
          desc = "Peek (Markdown Preview)"
          },
          opts = { theme = "dark", app = "browser"}
      }
  },
  {
      "kdheepak/lazygit.nvim",
      lazy = false,
  }


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
