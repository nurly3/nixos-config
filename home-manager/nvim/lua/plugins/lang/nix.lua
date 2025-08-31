return {
  {
    -- Enable LSP support for Nix using nixd
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nixd = {
          cmd = { "nixd" },
          filetypes = { "nix" },
          root_dir = require("lspconfig.util").root_pattern(".git", "."),
          settings = {
            nixd = {
              formatting = {
                command = { "nixpkgs-fmt" }, -- default formatter
              },
            },
          },
        },
      },
    },
  },
  {
    -- Add formatter support for Nix
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        nix = { "nixpkgs_fmt" },
      },
      formatters = {
        nixpkgs_fmt = {
          command = "nixpkgs-fmt",
          stdin = true,
        },
      },
    },
  },
}
