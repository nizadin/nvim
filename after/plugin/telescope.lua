local builtin = require("telescope.builtin")

-- vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {
--   desc = "[?] [f]ind [r]ecently opened files"
-- })

vim.keymap.set("n", "<leader>b", builtin.buffers, {
  desc = "Find [b]uffers"
})

vim.keymap.set("n", "<leader>f", builtin.git_files, {
  desc = "Git [f]iles"
})

vim.keymap.set("n", "<leader>pf", builtin.find_files, {
  desc = "[p]roject [f]iles"
})

vim.keymap.set("n", "<leader>pfa",
  function() vim.cmd("Telescope find_files hidden=true") end, {
    desc = "[p]roject [f]iles [a]ll"
  })

vim.keymap.set("n", "<leader>F", builtin.live_grep, {
  desc = "[F]ind grep"
})
vim.keymap.set("n", "gr", builtin.lsp_references, {
  desc = "Go to [r]eferences"
})
vim.keymap.set("n", "<leader>H", builtin.help_tags, {
  desc = "Find [H]elp"
})

vim.keymap.set("n", "<leader>d", function()
  builtin.diagnostics({
    bufnr = 0
  })
end, {
  desc = "Find [d]iagnostics"
})

vim.keymap.set("n", "<leader>D", builtin.diagnostics, {
  desc = "Find all [D]iagnostics"
})

vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, {
  desc = "Document [s]ymbols"
})

vim.keymap.set("n", "<leader>ps", builtin.lsp_workspace_symbols, {
  desc = "[p]roject [s]ymbols"
})
