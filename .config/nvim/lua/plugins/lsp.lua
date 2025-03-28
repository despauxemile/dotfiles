vim.api.nvim_create_autocmd("LspAttach", {
    callback = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
        vim.keymap.set("n", "gr", vim.lsp.buf.references)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
    end
})

return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls", "clangd", "rust_analyzer", "zls", "pyright", "tinymist" }
        },
        dependencies = { "williamboman/mason.nvim" },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { 'saghen/blink.cmp' },
        opts = {
            servers = {
                lua_ls = {},
                ts_ls = {},
                clangd = {},
                rust_analyzer = {
                    on_attach = function(_, bufnr)
                        vim.lsp.inlay_hint.enable(true, { bufnr })
                    end
                },
                zls = {},
                tinymist = {},
            },
        },
        config = function(_, opts)
            local lspcfg = require("lspconfig")
            for server, config in pairs(opts.servers) do
                config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                lspcfg[server].setup(config)
            end
        end
    },
}
