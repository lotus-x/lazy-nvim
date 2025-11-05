return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        exclude = { "typescript", "typescriptreact", "vue" },
      },
      servers = {
        yamlls = {
          settings = {
            yaml = {
              format = {
                enable = false,
              },
              customTags = {
                "!Base64 scalar",
                "!Cidr scalar",
                "!And sequence",
                "!Equals sequence",
                "!If sequence",
                "!Not sequence",
                "!Or sequence",
                "!Condition scalar",
                "!FindInMap sequence",
                "!GetAtt sequence",
                "!GetAZs scalar",
                "!ImportValue scalar",
                "!Join sequence",
                "!Select sequence",
                "!Split sequence",
                "!Sub scalar",
                "!Transform mapping",
                "!Ref scalar",
              },
            },
          },
        },
        jsonls = {
          settings = {
            json = {
              format = {
                enable = false,
              },
            },
          },
        },
        nushell = {},
      },
    },
  },
}
