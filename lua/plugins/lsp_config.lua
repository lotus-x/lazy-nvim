return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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
        gopls = {
          settings = {
            gopls = {
              analyses = {
                -- unreachable = true,
                -- nilness = true,
                -- unusedparams = true,
                -- useany = true,
                -- unusedwrite = true,
                -- ST1003 = true,
                -- undeclaredname = true,
                -- fillreturns = true,
                -- nonewvars = true,
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
        tailwindcss = {
          settings = {
            tailwindCSS = {
              classFunctions = {
                "tv",
              },
            },
          },
        },
      },
      setup = {
        tailwindcss = function(_, opts)
          opts.filetypes = opts.filetypes or {}
          -- Add default filetypes
          vim.list_extend(opts.filetypes, vim.lsp.config.tailwindcss.filetypes)
          -- Remove excluded filetypes
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,
      },
    },
  },
}
