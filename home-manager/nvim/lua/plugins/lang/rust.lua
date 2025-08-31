return {
    {
        -- Enable LSP support for Rust using rust-analyzer
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                rust_analyzer = {
                    cmd = { "rust-analyzer" }, -- make sure rust-analyzer is in PATH
                    filetypes = { "rust" },
                    root_dir = require("lspconfig.util").root_pattern(
                        "Cargo.toml",
                        "rust-project.json",
                        ".git"
                    ),
                    -- optional: example settings you might want
                    settings = {
                        ["rust-analyzer"] = {
                            cargo = { allFeatures = true },
                            checkOnSave = { command = "clippy" },
                        },
                    },
                },
            },
        },
    },
    {
        -- Add formatter support for Rust
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                rust = { "rustfmt" },
            },
            formatters = {
                rustfmt = {
                    command = "rustfmt",
                    args = { "--edition", "2021" },
                    stdin = true, -- rustfmt happily reads from stdin/stdout
                },
            },
        },
    },
}
