-- lua/plugins/platformio.lua

return {
    "anurag3301/nvim-platformio.lua",
    dependencies = {
        "akinsho/toggleterm.nvim",
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("platformio").setup({
            -- Optional settings here
            lsp = "clangd", -- This is crucial for enabling Clangd integration
        })
    end,
}
