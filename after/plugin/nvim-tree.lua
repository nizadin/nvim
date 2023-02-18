require("nvim-tree").setup()

vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>nf", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>nc", vim.cmd.NvimTreeFindFile)
