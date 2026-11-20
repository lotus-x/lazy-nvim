return {
  "chrisgrieser/nvim-chainsaw",
  opts = {}, -- required even if left empty
  keys = {
    {
      "glv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "log the name & value of the variable under the cursor",
    },
    {
      "glo",
      function()
        require("chainsaw").objectLog()
      end,
      desc = "like variableLog, but with syntax specific to inspect an object",
    },
    {
      "glt",
      function()
        require("chainsaw").typeLog()
      end,
      desc = "inspect the type of the variable under cursor, such as `typeof foo` in js",
    },
    {
      "gla",
      function()
        require("chainsaw").assertLog()
      end,
      desc = "assertion statement for variable under cursor",
    },
    {
      "glc",
      function()
        require("chainsaw").removeLogs()
      end,
      desc = "remove all log statements created by nvim-chainsaw",
    },
  },
}
