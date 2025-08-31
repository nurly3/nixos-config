return {
  {
    -- Enable LSP support for C using clangd
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
          settings = {
            clangd = {
              -- You can put specific clangd settings here if needed
              fallbackFlags = { "-std=c11" }, -- default C standard
            },
          },
        },
      },
    },
  },
  {
    -- Add formatter support for C
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        c = { "clangformat" },
        cpp = { "clangformat" },
      },
      formatters = {
        clangformat = {
          command = "clang-format",
          args = {},
          stdin = true,
        },
      },
    },
  },
}
