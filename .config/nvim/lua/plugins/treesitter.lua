return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    -- branch = "main",
    build = ":TSUpdate",
    config = function()
        -- new version, breaks telescope
        -- require 'nvim-treesitter'.install { 'c', 'cpp', 'css', 'erlang', 'html', 'lua', 'rust', 'typst', 'zig' }
        -- vim.treesitter.start()
    end
}
