function ReloadConfig()
  for name, _ in pairs(package.loaded) do
    if name:match("^niza") and not name:match("nvim-tree") then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

vim.api.nvim_set_keymap("n", "<leader>rc", "<cmd>lua ReloadConfig()<CR>", {
  noremap = true,
  silent = false
})
