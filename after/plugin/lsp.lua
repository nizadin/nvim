local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr}
  local bind = vim.keymap.set

  bind('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  bind('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
end)

local cmp = require('cmp')

lsp.setup_nvim_cmp({
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  })
})

lsp.setup()

