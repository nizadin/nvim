vim.opt.termguicolors = true
vim.o.background = "dark"

local colorscheme = "onedark"

function SetTheme(theme)
  theme = theme or colorscheme
  vim.cmd("colorscheme " .. theme)
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

SetTheme()
