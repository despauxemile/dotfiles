return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "cpp", "lua", "javascript", "typescript", "json", "python", "bash", "rust", "toml", "html", "css", "scss", "matlab", "zig", "latex", "make" },
			auto_install = false,
			highlight = {
				enable = true,
				disable = { "html" },
			},
			indent = { enable = true },
		})
	end,
}
