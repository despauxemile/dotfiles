return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			vim.cmd[[colorscheme tokyonight-moon]]

			vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")
		end,
	}
}
