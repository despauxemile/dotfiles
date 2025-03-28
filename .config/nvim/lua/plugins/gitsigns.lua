return {
    "lewis6991/gitsigns.nvim",
    opts = {
        on_attach = function(buf)
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
            vim.cmd([[:Gitsigns toggle_current_line_blame]])
        end
    },
}
