local map = vim.keymap.set
local builtin = require('telescope.builtin')

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- File and search
map('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
map('n', '<leader>fg', builtin.live_grep,  { desc = 'Live grep' })
map('n', '<leader>fb', builtin.buffers,    { desc = 'List buffers' })
map('n', '<leader>fh', builtin.help_tags,  { desc = 'Help tags' })

-- LSP-related
map('n', '<leader>fd', builtin.diagnostics, { desc = 'Workspace diagnostics' })
map('n', '<leader>fr', builtin.lsp_references, { desc = 'LSP references' })
map('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Document symbols' })

-- Git
map('n', '<leader>gc', builtin.git_commits, { desc = 'Git commits' })
map('n', '<leader>gb', builtin.git_branches, { desc = 'Git branches' })

