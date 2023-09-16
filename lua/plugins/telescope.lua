return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    -- keys = {
    --   {
    --     "<leader><space>",
    --     require("lazyvim.util").telescope("files", { sorter = require("utils.top-result-sorter").sorter() }),
    --     desc = "Find Files (root dir)",
    --   },
    -- },
  },
}
