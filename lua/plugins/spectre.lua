return {
  {
    "nvim-pack/nvim-spectre",
    key = {
      {
        "<leader>Ss",
        function()
          require("spectre").open()
        end,
        desc = "Spectre Open",
        remap = true,
      },
      {
        "<leader>Sw",
        function()
          require("spectre").open_visual({ select_word = true })
        end,
        desc = "Search current word",
        remap = true,
      },
      {
        "<leader>Sw",
        function()
          require("spectre").open_visual()
        end,
        desc = "Search current word",
        remap = true,
        mode = "v",
      },
      {
        "<leader>Sp",
        function()
          require("spectre").open_file_search({ select_word = true })
        end,
        desc = "Search on current file",
        remap = true,
      },
    },
    opts = {},
    lazy = true,
  },
}
