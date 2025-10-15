-- lua/config/lsp.lua

-- Python LSP with settings
vim.lsp.config.pyright = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
}
vim.lsp.enable("pyright")

-- C/C++ LSP
vim.lsp.config.clangd = {
  cmd = { "clangd", "--background-index" },
  init_options = {
    fallbackFlags = { "--std=c23" }
  }
}
vim.lsp.enable("clangd")
