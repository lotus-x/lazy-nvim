return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- enabled = false,
    opts = {
      -- flavour = "latte",
      -- flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
      auto_integrations = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
