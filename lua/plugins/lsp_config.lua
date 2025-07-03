return {
  {
    "neovim/nvim-lspconfig",
    -- version = "1.0.0",
    opts = {
      -- format = { timeout_ms = 20000 },
      -- capabilities = {
      --   textDocument = {
      --     foldingRange = {
      --       dynamicRegistration = false,
      --       lineFoldingOnly = true,
      --     },
      --   },
      -- },
      inlay_hints = {
        exclude = { "typescript", "typescriptreact", "vue" },
      },
      servers = {
        -- lua_ls = {
        --   settings = {
        --     Lua = {
        --       workspace = {
        --         checkThirdParty = false,
        --       },
        --       completion = {
        --         callSnippet = "Replace",
        --       },
        --     },
        --   },
        -- },
        -- vimls = {},
        cssls = {},
        cssmodules_ls = {},
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
        -- marksman = {},
        -- intelephense = {},
        -- volar = {},
        -- lemminx = {},
        -- emmet_language_server = {},
        -- typos_lsp = {},
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unreachable = true,
                nilness = true,
                unusedparams = true,
                useany = true,
                unusedwrite = true,
                -- ST1003 = true,
                undeclaredname = true,
                fillreturns = true,
                nonewvars = true,
                -- shadow = true,
              },
            },
          },
        },
        graphql = {},
        dartls = {
          enabled = false,
        },
        biome = {},
        html = {},
      },
    },
  },
  -- {
  --   "antosha417/nvim-lsp-file-operations",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-neo-tree/neo-tree.nvim",
  --   },
  --   config = function()
  --     require("lsp-file-operations").setup()
  --   end,
  -- },
}
