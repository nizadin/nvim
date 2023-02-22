vim.g.mapleader = " "

-- Netrw is my love
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Align half-page scrolls
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Align search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste into selection
vim.keymap.set("x", "<leader>P", "\"_dP")

-- Toggle between system and editor registers
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete into void, not into the yank register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Q is very bad
vim.keymap.set("n", "Q", "<nop>")

-- Diagnostic keymaps
vim.keymap.set('n', 'úd', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'äd', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>j', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

