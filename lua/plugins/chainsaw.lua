return {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  opts = {}, -- required even if left empty
  keys = {
    {
      "glv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "log the name & value of the variable under the cursor",
      remap = true,
    },
    {
      "glo",
      function()
        require("chainsaw").objectLog()
      end,
      desc = "like variableLog, but with syntax specific to inspect an object",
      remap = true,
    },
    {
      "glt",
      function()
        require("chainsaw").typeLog()
      end,
      desc = "inspect the type of the variable under cursor, such as `typeof foo` in js",
      remap = true,
    },
    {
      "gla",
      function()
        require("chainsaw").assertLog()
      end,
      desc = "assertion statement for variable under cursor",
      remap = true,
    },
    {
      "glc",
      function()
        require("chainsaw").removeLogs()
      end,
      desc = "remove all log statements created by nvim-chainsaw",
      remap = true,
    },
  },
}
