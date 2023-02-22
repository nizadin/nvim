vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local handle = io.popen("defaults read -g AppleInterfaceStyle")

if handle ~= nil then
  local isdark = handle:read("*a"):gsub("[\n%s\t]*", "") == "Dark"
  handle:close()

  local bg
  if isdark then
    bg = "dark"
  else
    bg = "light"
  end

  vim.opt.background = bg
  -- vim.notify(tostring(isdark), vim.log.levels.INFO);
end

