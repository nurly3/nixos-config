return {
  {
    -- Enable LSP support for QML using qmlls
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        qmlls = {
          cmd = { "qmlls6" },
          filetypes = { "qml" },
          root_dir = require("lspconfig.util").root_pattern(".git", "."),
        },
      },
    },
  },
  {
    -- Add formatter support for QML
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        qml = { "qmlformat" },
      },
      formatters = {
        qmlformat = {
          command = "qmlformat",
          args = { "--inplace" },
          stdin = false, -- qmlformat edits files directly
        },
      },
    },
  },
}
