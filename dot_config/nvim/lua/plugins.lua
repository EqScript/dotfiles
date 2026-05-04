vim.pack.add({
	{src = "https://github.com/folke/tokyonight.nvim"},
})
require("tokyonight").setup({})

vim.pack.add({{src = "https://github.com/olimorris/onedarkpro.nvim"}})

require("onedarkpro").setup({})

vim.pack.add({{src = "https://github.com/dgrco/mokka.nvim"}})

vim.pack.add({
	{src = "https://github.com/mason-org/mason.nvim"},
})
require("mason").setup({})

vim.pack.add({
	{src = "https://github.com/nvim-lualine/lualine.nvim"},
})
require("lualine").setup({})

vim.pack.add({
	{src = "https://github.com/nvim-tree/nvim-tree.lua"},
})
require("nvim-tree").setup({})

-- LSP and Completion
vim.pack.add({{src = "https://github.com/neovim/nvim-lspconfig"}})
vim.pack.add({{src = "https://github.com/williamboman/mason-lspconfig.nvim"}})
vim.pack.add({{src = "https://github.com/hrsh7th/nvim-cmp"}})
vim.pack.add({{src = "https://github.com/hrsh7th/cmp-nvim-lsp"}})
vim.pack.add({{src = "https://github.com/hrsh7th/cmp-buffer"}})
vim.pack.add({{src = "https://github.com/hrsh7th/cmp-path"}})
vim.pack.add({{src = "https://github.com/L3MON4D3/LuaSnip"}})
vim.pack.add({{src = "https://github.com/saadparwaiz1/cmp_luasnip"}})

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
    handlers = {
        function(server_name)
            vim.lsp.enable(server_name)
        end,
    },
})

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer', option = { get_bufnrs = function() return vim.api.nvim_list_bufs() end } },
        { name = 'path' },
    })
})

-- Set up lspconfig replacement (Neovim 0.11+).
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', { capabilities = capabilities })

-- Configure specific servers
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = { globals = {'vim'} }
        }
    }
})

-- Servers are enabled via mason-lspconfig setup_handlers above.

-- TreeSitter
vim.pack.add({
    {src = "https://github.com/nvim-treesitter/nvim-treesitter"},
})

vim.api.nvim_create_autocmd("User", {
  pattern = "PackUpdated",
  callback = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "c", "cpp", "lua", "rust", "python" },
      highlight = { enable = true },
    }
  end,
})
