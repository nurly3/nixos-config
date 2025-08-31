return {
    {
        -- Enable LSP support for Python using pyright
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {
                    cmd = { "pyright-langserver", "--stdio" }, -- assumes pyright is in PATH
                    filetypes = { "python" },
                    root_dir = require("lspconfig.util").root_pattern(
                        "pyproject.toml",
                        "setup.py",
                        "setup.cfg",
                        "requirements.txt",
                        ".git"
                    ),
                    settings = {
                        python = {
                            analysis = {
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                diagnosticMode = "workspace",
                                typeCheckingMode = "strict", -- get roasted by type checker
                            },
                        },
                    },
                },
            },
        },
    },
    {
        -- Add formatter support for Python
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                python = { "black", "isort" }, -- clean code *and* sorted imports? Yessir.
            },
            formatters = {
                black = {
                    command = "black",
                    args = { "--quiet", "-" }, -- "-" makes black read from stdin
                    stdin = true,
                },
                isort = {
                    command = "isort",
                    args = { "--stdout", "--profile", "black", "-" },
                    stdin = true,
                },
            },
        },
    },
}
