return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local cfgs = require("nvim-treesitter.configs")
        cfgs.setup({
            ensure_installed = { "c", "cpp", "typescript", "javascript", "rust", "zig", "python", "typst" },
            sync_install = false,
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
