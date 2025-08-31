-- lua/plugins/colors.lua
-- lua/plugins/colors.lua
return {
    { "folke/tokyonight.nvim" },
    { "catppuccin/nvim", name = "catppuccin" },
    { "ellisonleao/gruvbox.nvim" },

    -- Onedark with style
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- Options: "dark", "darker", "cool", "deep", "warm", "warmer", "light"
            style = "warmer",
        },
        config = function(_, opts)
            require("onedark").setup(opts) -- no load() here; LazyVim will apply the colorscheme
        end,
    },

    -- Pick Onedark as the active scheme
    { "LazyVim/LazyVim", opts = { colorscheme = "onedark" } },
}
