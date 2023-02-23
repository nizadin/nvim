vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", {
  bg = "none"
})
vim.api.nvim_set_hl(0, "NormalFloat", {
  bg = "none"
})

os.execute("~/apperancenotifier.sh")

vim.cmd.colorscheme "iceberg"
