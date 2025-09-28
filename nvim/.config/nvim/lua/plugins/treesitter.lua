-- lua/plugins/treesitter.lua
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = { "c", "cpp", "vimdoc", "lua", "json" },
            highlight = { enable = true },
        },
    },
}
