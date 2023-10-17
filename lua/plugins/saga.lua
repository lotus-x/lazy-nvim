return {
  "glepnir/lspsaga.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    --Please make sure you install markdown and markdown_inline parser
    { "nvim-treesitter/nvim-treesitter" },
  },
  event = "LspAttach",
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
      "gD",
      "<cmd>Lspsaga peek_definition<CR>",
      desc = "LSP Saga Peek Definition",
      remap = true,
    },
    {
      "gd",
      "<cmd>Lspsaga goto_definition<CR>",
      desc = "LSP Saga Goto Definition",
      remap = true,
    },
    {
      "gT",
      "<cmd>Lspsaga peek_type_definition<CR>",
      desc = "LSP Saga Peek Type Definition",
      remap = true,
    },
    {
      "gt",
      "<cmd>Lspsaga goto_type_definition<CR>",
      desc = "LSP Saga Goto Type Definition",
      remap = true,
    },
    {
      "<leader>sl",
      "<cmd>Lspsaga show_line_diagnostics<CR>",
      desc = "LSP Saga Show Line Diagnostic",
      remap = true,
    },
    {
      "<leader>sb",
      "<cmd>Lspsaga show_buf_diagnostics<CR>",
      desc = "LSP Saga Show Buf Diagnostic",
      remap = true,
    },
    {
      "<leader>sw",
      "<cmd>Lspsaga show_workspace_diagnostics<CR>",
      desc = "LSP Saga Show Workspace Diagnostic",
      remap = true,
    },
    {
      "<leader>sc",
      "<cmd>Lspsaga show_cursor_diagnostics<CR>",
      desc = "LSP Saga Show Cursor Diagnostic",
      remap = true,
    },
    {
      "[e",
      "<cmd>Lspsaga diagnostic_jump_prev<CR>",
      desc = "LSP Saga Diagnostic Jump Previous",
      remap = true,
    },
    {
      "]e",
      "<cmd>Lspsaga diagnostic_jump_next<CR>",
      desc = "LSP Saga Diagnostic Jump Next",
      remap = true,
    },
    {
      "[E",
      function()
        require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
      end,
      desc = "LSP Saga Diagnostic Jump Previous Error",
      remap = true,
    },
    {
      "]E",
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
  opts = function(_, opts)
    opts.lightbulb = vim.tbl_deep_extend("force", opts.lightbulb or {}, {
      enable = false,
    })
    opts.symbol_in_winbar = vim.tbl_deep_extend("force", opts.symbol_in_winbar or {}, {
      enable = false,
    })
  end,
}
