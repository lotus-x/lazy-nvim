return {
  {
    "luukvbaal/statuscol.nvim",
    lazy = false,
    opts = function()
      local builtin = require("statuscol.builtin")
      return {
        segments = {
          -- { text = { "%s", " " }, click = "v:lua.ScSa" },
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
                "Mark",
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
              name = { "GitSigns" },
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
