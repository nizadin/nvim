local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>w", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>+", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>ľ", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>š", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>č", function() ui.nav_file(4) end)
