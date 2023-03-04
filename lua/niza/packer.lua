vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Pack me, baby!
  use("wbthomason/packer.nvim")

  -- 🏂 Vim motions training game
  use("ThePrimeagen/vim-be-good")

  -- Fuzzy finder
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = {
      {
        "nvim-lua/plenary.nvim"
      }
    }
  })

  -- 🌳
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })

  -- 🎣 Daddy Prime's solution for a quick navigation
  use("theprimeagen/harpoon")

  -- Overpowered undo
  use("mbbill/undotree")

  -- Who needs background color anyways?
  use("xiyaowong/nvim-transparent")

  -- 🎨 Good color scheme
  use({
    "rose-pine/neovim",
    as = "rose-pine"
  })

  -- 🌃 Another good color scheme
  use("folke/tokyonight.nvim");

  -- Do Git stuff inside of Vim
  use("tpope/vim-fugitive")

  -- Me = lazy
  use("jose-elias-alvarez/null-ls.nvim")

  -- Me = very lazy
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      {
        "neovim/nvim-lspconfig"
      }, -- Required
      {
        "williamboman/mason.nvim"
      }, -- Optional
      {
        "williamboman/mason-lspconfig.nvim"
      }, -- Optional

      -- Autocompletion
      {
        "hrsh7th/nvim-cmp"
      }, -- Required
      {
        "hrsh7th/cmp-nvim-lsp"
      }, -- Required
      {
        "hrsh7th/cmp-buffer"
      }, -- Optional
      {
        "hrsh7th/cmp-path"
      }, -- Optional
      {
        "saadparwaiz1/cmp_luasnip"
      }, -- Optional
      {
        "hrsh7th/cmp-nvim-lua"
      }, -- Optional
      -- Snippets
      {
        "L3MON4D3/LuaSnip"
      }, -- Required
      {
        "rafamadriz/friendly-snippets"
      } -- Optional
    }
  })

  -- I NEED TO SEE THAT DAMN FILE TREE, OTHERWISE I FEEL F*ING LOST!
  use("nvim-tree/nvim-tree.lua")

  -- Nice status line
  use("nvim-lualine/lualine.nvim")

  -- Add indentation guides even on blank lines
  use({
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      char = "┊",
      show_trailing_blankline_indent = false
    }
  })

  -- Smart comments
  use("numToStr/Comment.nvim")
end)
