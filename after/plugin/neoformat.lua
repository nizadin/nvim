vim.g.neoformat_try_node_exe = 1

-- Enable alignment
vim.g.neoformat_basic_format_align = 1

-- Enable tab to spaces conversion
vim.g.neoformat_basic_format_retab = 1

-- Enable trimmming of trailing whitespace
vim.g.neoformat_basic_format_trim = 1

vim.keymap.set("n", "<leader>qf", vim.cmd.Neoformat)
