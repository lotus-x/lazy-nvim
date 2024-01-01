return {
  {
    "luukvbaal/statuscol.nvim",
    lazy = false,
    opts = function()
      local builtin = require("statuscol.builtin")

      ---@return Sign?
      ---@param buf number
      ---@param lnum number
      function M.get_mark(buf, lnum)
        local marks = vim.fn.getmarklist(buf)
        vim.list_extend(marks, vim.fn.getmarklist())
        for _, mark in ipairs(marks) do
          if mark.pos[1] == buf and mark.pos[2] == lnum and mark.mark:match("[a-zA-Z]") then
            return mark.mark:sub(2)
          end
        end
      end

      return {
        segments = {
          -- { text = { "%s", " " }, click = "v:lua.ScSa" },
          {
            text = {
              function(args)
                return M.get_mark(args.buf, args.lnum)
              end,
              " ",
            },
            condition = {
              function(args)
                return M.get_mark(args.buf, args.lnum) ~= nil
              end,
              true,
            },
            hl = "DiagnosticHint",
          },
          {
            sign = {
              name = {
                "todo",
              },
              maxwidth = 1,
              colwidth = 1,
              auto = true,
            },
            click = "v:lua.ScSa",
          },
          {
            sign = {
              name = {
                "Dap",
                "neotest",
              },
              maxwidth = 2,
              colwidth = 2,
              auto = true,
            },
            click = "v:lua.ScSa",
          },
          {
            sign = {
              name = {
                "Diagnostic",
              },
              auto = true,
            },
            click = "v:lua.ScSa",
          },
          {
            text = { builtin.lnumfunc, " " },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
          },
          {
            sign = {
              name = {
                "goCoverage",
              },
              maxwidth = 1,
              colwidth = 1,
              auto = true,
            },
            click = "v:lua.ScSa",
          },
          {
            sign = {
              namespace = { "gitsigns" },
              maxwidth = 1,
              colwidth = 1,
              auto = false,
              fillchar = "▏",
            },
            click = "v:lua.ScSa",
          },
          { text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
        },
        ft_ignore = {
          "help",
          "vim",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "noice",
          "lazy",
          "toggleterm",
        },
      }
    end,
  },
}
