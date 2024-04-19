return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon"):list():add()
        end,
        remap = true,
      },
      {
        "<leader>hl",
        function()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        remap = true,
      },
    },
  },
}
