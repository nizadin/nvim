require("telescope").setup({
  defaults = {
    wrap_results = true,
    dynamic_preview_title = true,
    color_devicons = false,
    file_ignore_patterns = {
      "^node_modules/"
    },
    layout_strategy = "vertical",
    layout_config = {
      prompt_position = "top"
    },
    cache_picker = {
      num_pickers = 3
    }
  }
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>b", builtin.buffers, {
  desc = "Find buffers"
})

vim.keymap.set("n", "<leader>f", builtin.find_files, {
  desc = "Git files"
})

vim.keymap.set("n", "<leader>pf", builtin.git_files, {
  desc = "Project files"
})

vim.keymap.set("n", "<leader>pfa",
  function() vim.cmd("Telescope find_files hidden=true") end, {
    desc = "Project files all (including hidden)"
  })

vim.keymap.set("n", "<leader>F", builtin.live_grep, {
  desc = "Find grep"
})

vim.keymap.set("n", "<leader>rp", builtin.resume, {
  desc = "Resume last search"
})

vim.keymap.set("n", "gr", builtin.lsp_references, {
  desc = "Go to references"
})
vim.keymap.set("n", "<leader>H", builtin.help_tags, {
  desc = "Find help"
})

vim.keymap.set("n", "<leader>d", function()
  builtin.diagnostics({
    bufnr = 0
  })
end, {
  desc = "Find diagnostics"
})

vim.keymap.set("n", "<leader>D", builtin.diagnostics, {
  desc = "Find all diagnostics"
})

vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, {
  desc = "Document symbols"
})

vim.keymap.set("n", "<leader>ps", builtin.lsp_workspace_symbols, {
  desc = "Project symbols"
})
