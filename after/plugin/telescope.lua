local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set('n', '<leader>f', builtin.git_files, { desc = "Git [F]iles" })
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "[P]roject [F]iles" })

vim.keymap.set(
  'n',
  '<leader>pfa',
  function()
    vim.cmd("Telescope find_files hidden=true")
  end,
  { desc = "[P]roject [F]iles [A]ll" }
)

vim.keymap.set('n', '<leader>F', builtin.live_grep, { desc = "[F]ind grep" })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Find [B]uffers" })
vim.keymap.set('n', '<leader>H', builtin.help_tags, { desc = "Find [H]elp" })
vim.keymap.set('n', '<leader>d', builtin.diagnostics, { desc = "Find [D]iagnostics" })
vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols, { desc = "Document [S]ymbols" })
vim.keymap.set('n', '<leader>ps', builtin.lsp_workspace_symbols, { desc = "[P]roject [S]ymbols" })
