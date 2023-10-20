return {
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    enabled = false,
    opts = {},
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Create comment box from text",
        remap = true,
      },
      {
        "<leader>hl",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Create comment box from text",
        remap = true,
      },
    },
  },
}
