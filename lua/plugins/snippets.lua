local word_before = function()
  unpack = unpack or table.unpack
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local start_col = col

  while start_col > 0 and line:sub(start_col, start_col):match("[%w-_]") do
    start_col = start_col - 1
  end

  return line:sub(start_col + 1, col), row, col
end

local clear_before_by_length = function(length)
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))

  vim.api.nvim_buf_set_text(0, row - 1, col - length, row - 1, col, {})
  vim.api.nvim_win_set_cursor(0, { row, col - length })
end

return {
  {
    "garymjr/nvim-snippets",
    opts = {
      extended_filetypes = {
        typescript = { "javascript" },
        typescriptreact = { "javascriptreact" },
        vue = { "typescript", "javascript" },
      },
    },
    keys = {
      {
        "<C-L>",
        function()
          local word_before_cursor, row, col = word_before()
          local snippet = require("snippets.utils").find_snippet_prefix(word_before_cursor)

          if snippet ~= nil then
            clear_before_by_length(#word_before_cursor)
            vim.snippet.expand(snippet.body)
          end
        end,
        mode = "i",
      },
    },
  },
}
