return {
  {
    "catppuccin/nvim",
    priority = 1000,
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "latte",
      custom_highlights = function(colors)
        local utils = require("catppuccin.utils.colors")
        return {
          NeoTreeCursorLine = { bg = colors.crust },
          DiagnosticUnderlineError = { bg = utils.darken(colors.red, 0.095, colors.base), style = { nil } },
          DiagnosticUnderlineWarn = { bg = utils.darken(colors.yellow, 0.095, colors.base), style = { nil } },
          DiagnosticUnderlineInfo = { bg = utils.darken(colors.sky, 0.095, colors.base), style = { nil } },
          DiagnosticUnderlineHint = { bg = utils.darken(colors.teal, 0.095, colors.base), style = { nil } },
          MarkSignHL = { fg = colors.pink },
        }
      end,
      integrations = {
        telescope = {
          enabled = true,
        },
        neotree = true,
        mason = true,
        lsp_trouble = true,
        illuminate = {
          enabled = true,
          lsp = false,
        },
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          scope_color = "",
          colored_indent_levels = false,
        },
        which_key = true,
        noice = true,
        notify = true,
        cmp = true,
        dap = {
          enabled = true,
          enable_ui = true,
        },
        mini = {
          enabled = true,
          indentscope_color = "",
        },
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
          inlay_hints = {
            background = true,
          },
        },
        treesitter_context = true,
        treesitter = true,
        notifier = true,
        flash = true,
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        dashboard = true,
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
