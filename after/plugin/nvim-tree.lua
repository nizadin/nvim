require("nvim-tree").setup({
  view = {
    width = 40,
    number = true,
    relativenumber = true
  },
  update_focused_file = {
    enable = true
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true
  },
  filters = {
    exclude = {
      ".env"
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
