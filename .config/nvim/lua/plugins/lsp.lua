return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "rust_analyzer", "ts_ls", "pyright", "zls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig["clangd"].setup({
                capabilities = capabilities,
            })
            lspconfig["rust_analyzer"].setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    vim.lsp.inlay_hint.enable(true, {bufnr})
                end
            })
            lspconfig["ts_ls"].setup({
                capabilities = capabilities,
            })
            lspconfig["pyright"].setup({
                capabilities = capabilities,
            })
            lspconfig["zls"].setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "<leader>.", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
