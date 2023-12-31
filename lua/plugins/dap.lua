return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>d"] = { name = "+debug" },
        ["<leader>dap"] = { name = "+python" },
        ["<leader>dag"] = { name = "+go" },
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    keys = {
      {
        "<leader>dapm",
        function()
          require("dap-python").test_method()
        end,
        desc = "Test method",
      },
      {
        "<leader>dapc",
        function()
          require("dap-python").test_class()
        end,
        desc = "Test class",
      },
      {
        "<leader>daps",
        function()
          require("dap-python").debug_selection()
        end,
        desc = "Debug selection",
      },
    },
    config = function()
      require("dap-python").setup()
    end,
  },
  {
    "leoluz/nvim-dap-go",
    keys = {
      {
        "<leader>dagt",
        function()
          require("dap-go").debug_test()
        end,
        desc = "Test method",
      },
    },
    opts = {},
  },
}
