-- lua/config/highlights.lua
local set = vim.api.nvim_set_hl
local ns = 0

-- Literals (make these pop differently)
set(ns, "@number", { link = "Number" })
set(ns, "@float", { link = "Float" })
set(ns, "@boolean", { link = "Boolean" })
set(ns, "@string", { link = "String" })
set(ns, "@character", { link = "Character" })

-- Constants vs literals (keep separate)
set(ns, "@constant", { link = "Constant" })
set(ns, "@constant.builtin", { link = "Special" }) -- e.g., true/false/NULL if theme lumps them

-- Types (keep them distinct from literals)
set(ns, "@type", { link = "Type" })
set(ns, "@type.builtin", { link = "Type" })

-- LSP semantic tokens (clangd)
set(ns, "@lsp.type.type", { link = "Type" })
set(ns, "@lsp.type.struct", { link = "Type" })
set(ns, "@lsp.type.class", { link = "Type" })
set(ns, "@lsp.type.enum", { link = "Type" })
set(ns, "@lsp.type.enumMember", { link = "Constant" })
set(ns, "@lsp.type.macro", { link = "Macro" })
set(ns, "@lsp.type.function", { link = "Function" })
set(ns, "@lsp.type.method", { link = "Function" })
set(ns, "@lsp.type.namespace", { link = "Identifier" })
