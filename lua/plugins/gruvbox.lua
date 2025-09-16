return {
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    priority = 1000,
    config = true,
    init = function()
      vim.o.background = "light"
      vim.cmd.colorscheme("gruvbox")
    end,
    opts = {
      contrast = "hard",
    },
  },
  -- {
  --   "sainnhe/gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.o.background = "light"
  --     vim.g.gruvbox_material_enable_italic = true
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.cmd.colorscheme("gruvbox-material")
  --   end,
  -- },
}
