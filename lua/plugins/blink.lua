return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        documentation = {
          window = {
            border = "rounded",
          },
        },
        accept = {
          auto_brackets = {
            kind_resolution = {
              enabled = true,
              blocked_filetypes = { "typescriptreact", "javascriptreact", "vue", "typescript" },
            },
          },
        },
      },
    },
  },
}
