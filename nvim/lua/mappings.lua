require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep (ripgrep)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
