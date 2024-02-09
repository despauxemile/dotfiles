return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "cpp", "lua", "javascript", "typescript", "json", "python", "bash", "rust", "toml", "html" , "css", "matlab", "zig", "latex", "make" },
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
