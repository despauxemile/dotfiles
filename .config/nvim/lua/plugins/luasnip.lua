return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.3.0",
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "saadparwaiz1/cmp_luasnip",
    }
}
