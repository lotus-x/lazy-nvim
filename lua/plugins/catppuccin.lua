return {
  {
    "catppuccin/nvim",
    priority = 1000,
    lazy = false,
    name = "catppuccin",
    opts = {
      -- flavour = "macchiato",
      flavour = "latte",
      integrations = {
        telescope = true,
        neotree = true,
        mason = true,
        lsp_trouble = true,
        -- illuminate = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
        which_key = true,
        noice = true,
        notify = true,
        cmp = true,
        dap = {
          enabled = true,
          enable_ui = true,
        },
        mini = true,
        lsp_saga = true,
        leap = true,
        neogit = true,
        neotest = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        treesitter_context = false,
        treesitter = true,
        symbols_outline = false,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
