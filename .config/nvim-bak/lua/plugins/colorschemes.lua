return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true
        },
        config = function()
            vim.cmd([[colorscheme tokyonight-moon]])
        end
    }
}
