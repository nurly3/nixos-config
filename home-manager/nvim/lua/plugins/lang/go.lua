return {
  {
    -- Enable LSP support for Go using gopls
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          cmd = { "gopls" },
          filetypes = { "go", "gomod" },
          root_dir = require("lspconfig.util").root_pattern("go.mod", ".git"),
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                unreachable = true,
              },
              staticcheck = true,
              gofumpt = true,
            },
          },
        },
      },
    },
  },
  {
    -- Add formatter support for Go
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "gofmt", "goimports" },
      },
      formatters = {
        gofmt = {
          command = "gofmt",
          args = {},
          stdin = true,
        },
        goimports = {
          command = "goimports",
          args = {},
          stdin = true,
        },
      },
    },
  },
}
