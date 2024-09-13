return {
	{
		'williamboman/mason.nvim',
		config = function()
			require("mason").setup()
		end,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'texlab', 'clangd', 'zls', 'tsserver', 'html', 'cssls', 'rust_analyzer', 'asm_lsp' }
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspcfg = require("lspconfig")
			lspcfg.lua_ls.setup({
				capabilities = capabilities
			})
			lspcfg.texlab.setup({
				capabilities = capabilities
			})
			lspcfg.clangd.setup({
				capabilities = capabilities
			})
			lspcfg.zls.setup({
				capabilities = capabilities
			})
			lspcfg.tsserver.setup({
				capabilities = capabilities
			})
			lspcfg.html.setup({
				capabilities = capabilities
			})
			lspcfg.cssls.setup({
				capabilities = capabilities
			})
			lspcfg.rust_analyzer.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					vim.lsp.inlay_hint.enable(true, {bufnr})
				end
			})
			lspcfg.asm_lsp.setup({
				capabilities = capabilities
			})

			-- keymaps
			vim.keymap.set('n', '<leader>hv', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '<leader>df', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>dg', vim.diagnostic.open_float, {})
		end
	}
}
