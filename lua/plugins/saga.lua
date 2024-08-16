return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  event = "LspAttach",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "<leader>co", false }
    keys[#keys + 1] = { "<leader>ci", false }
    keys[#keys + 1] = { "<leader>ca", false }
    keys[#keys + 1] = { "gd", false }
    keys[#keys + 1] = { "gD", false }
    keys[#keys + 1] = { "K", false }
    -- disable all lsp key maps
    -- for k in pairs(keys) do
    --   keys[k] = nil
    -- end
  end,
  keys = {
    {
      "gh",
      "<cmd>Lspsaga finder<CR>",
      desc = "LSP Saga Finder",
      remap = true,
    },
    {
      "<leader>ca",
      "<cmd>Lspsaga code_action<CR>",
      desc = "LSP Saga Code Action",
      remap = true,
      mode = { "n", "v" },
    },
    {
      "gr",
      "<cmd>Lspsaga rename<CR>",
      desc = "LSP Saga Rename",
      remap = true,
    },
    {
      "gd",
      "<cmd>Lspsaga peek_definition<CR>",
      desc = "LSP Saga Peek Definition",
      remap = true,
    },
    {
      "gD",
      "<cmd>Lspsaga goto_definition<CR>",
      desc = "LSP Saga Goto Definition",
      remap = true,
    },
    {
      "gt",
      "<cmd>Lspsaga peek_type_definition<CR>",
      desc = "LSP Saga Peek Type Definition",
      remap = true,
    },
    {
      "gT",
      "<cmd>Lspsaga goto_type_definition<CR>",
      desc = "LSP Saga Goto Type Definition",
      remap = true,
    },
    {
      "<leader>cd",
      "<cmd>Lspsaga show_line_diagnostics<CR>",
      desc = "LSP Saga Show Line Diagnostic",
      remap = true,
    },
    {
      "<leader>cD",
      "<cmd>Lspsaga show_cursor_diagnostics<CR>",
      desc = "LSP Saga Show Cursor Diagnostic",
      remap = true,
    },
    {
      "[d",
      "<cmd>Lspsaga diagnostic_jump_prev<CR>",
      desc = "LSP Saga Diagnostic Jump Previous",
      remap = true,
    },
    {
      "]d",
      "<cmd>Lspsaga diagnostic_jump_next<CR>",
      desc = "LSP Saga Diagnostic Jump Next",
      remap = true,
    },
    {
      "[e",
      function()
        require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
      end,
      desc = "LSP Saga Diagnostic Jump Previous Error",
      remap = true,
    },
    {
      "]e",
      function()
        require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
      end,
      desc = "LSP Saga Diagnostic Jump Next Error",
      remap = true,
    },
    {
      "K",
      "<cmd>Lspsaga hover_doc<CR>",
      desc = "LSP Saga Hover Doc",
      remap = true,
    },
    {
      "<Leader>ci",
      "<cmd>Lspsaga incoming_calls<CR>",
      desc = "LSP Saga Incoming Calls",
      remap = true,
    },
    {
      "<Leader>co",
      "<cmd>Lspsaga outgoing_calls<CR>",
      desc = "LSP Saga Outgoing Calls",
      remap = true,
    },
  },
  opts = {
    symbol_in_winbar = {
      enable = false,
    },
    lightbulb = {
      enable = false,
    },
    implement = {
      enable = false,
    },
  },
}
