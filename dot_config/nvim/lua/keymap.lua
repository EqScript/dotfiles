vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', {desc = "Toggle file explorer"})
vim.keymap.set('n', '<leader>t', ':vsplit | term<CR>a', {desc = "Terminal V-Split"})

-- Focus Left/Right
vim.keymap.set('n', '<M-h>', '<C-w>h', {noremap = true, silent = true})
vim.keymap.set('n', '<M-l>', '<C-w>l', {noremap = true, silent = true})
vim.keymap.set('t', '<M-h>', [[<C-\><C-n><C-w>h]], {noremap = true, silent = true})
vim.keymap.set('t', '<M-l>', [[<C-\><C-n><C-w>l]], {noremap = true, silent = true})
-- Clean highlight in Normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
