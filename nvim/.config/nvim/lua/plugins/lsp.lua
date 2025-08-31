-- lua/plugins/lsp.lua
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    -- good defaults; semantic tokens on by default in 0.9/0.10+
                },
            },
        },
    },
}
