local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.completion.spell,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.cspell,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.diagnostics.cspell.with({
      -- Force the severity to be HINT
      diagnostics_postprocess = function(diagnostic)
        diagnostic.severity = vim.diagnostic.severity.HINT
      end
    })
  }
})
