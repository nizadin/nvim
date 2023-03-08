require("nvim-tree").setup({
  view = {
    width = 40,
    number = true,
    relativenumber = true
  },
  update_focused_file = {
    enable = true
  },
  filters = {
    exclude = {
      ".env",
      ".eslintrc",
      ".eslintrc.json",
      ".eslintrc.yml",
      ".eslintrc.js",
      ".eslintrc.cjs",
      ".prettierrc",
      ".prettierrc.yml",
      ".prettierrc.json",
      ".prettierrc.js",
      ".prettierrc.mjs",
      ".npmrc",
      ".nvmrc"
    }
  },
  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
      inline_arrows = true
    },
    icons = {
      webdev_colors = false,
      git_placement = "after",
      padding = " ",
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
        modified = true
      },
      glyphs = {
        modified = "M",
        folder = {
          arrow_closed = "+",
          arrow_open = "-"
        },
        git = {
          unstaged = "🎈",
          staged = "🗽",
          renamed = "📇",
          untracked = "🧐",
          deleted = "💀",
          ignored = "💃",
          unmerged = "🩻"
        }
      }
    }
  }
})

vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>nf", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>nc", vim.cmd.NvimTreeFindFile)
