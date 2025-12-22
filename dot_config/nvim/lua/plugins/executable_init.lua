return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup()
    end,
    cmd = "Spectre",
  },

  {
    "vim-scripts/a.vim",
    lazy = false,
  },

{
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,
        custom = {}, -- ← make sure sdkconfig.* is NOT listed
      },
      git = {
        enable = true,
        ignore = false, -- ← show gitignored files
      },
      view = {
        width = 40,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        highlight_git = true,
        special_files = { "README.md", "Makefile", "sdkconfig.defaults" },
      },
    }
  end,
},

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
