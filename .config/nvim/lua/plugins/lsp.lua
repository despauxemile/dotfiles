vim.api.nvim_create_autocmd("LspAttach", {
    callback = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("n", "<leader>dg", vim.diagnostic.open_float)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
        vim.keymap.set("n", "gr", vim.lsp.buf.references)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
    end
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})

vim.lsp.config("*", {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.config("lua_ls", {
    settings = {
        ["Lua"] = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

vim.lsp.enable({ "clangd", "rust_analyzer" })

vim.diagnostic.config({ severity_sort = true })

return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls", "zls", "pyright", "tinymist", "svelte", "cssls", "html" },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {},
        config = function()
        end
    },
}
