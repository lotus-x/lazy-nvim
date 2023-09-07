return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      -- keys[#keys + 1] = { "<leader>cd", false }
      -- keys[#keys + 1] = { "<leader>cl", false }
      -- keys[#keys + 1] = { "<leader>ca", false }
      -- keys[#keys + 1] = { "<leader>cA", false }
      -- keys[#keys + 1] = { "K", false }
      for k in pairs(keys) do
        keys[k] = nil
      end
    end,
    opts = {
      format = { timeout_ms = 20000 },
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
        vimls = {},
        cssls = {},
        cssmodules_ls = {},
        yamlls = {
          on_new_config = function(new_config)
            new_config.settings.yaml.schemas = require("schemastore").yaml.schemas()
          end,
          settings = {
            redhat = { telemetry = { enabled = false } },
            yaml = {
              keyOrdering = false,
              format = {
                enable = false,
              },
              validate = { enable = true },
              schemaStore = {
                enable = false,
                url = "",
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
          on_new_config = function(new_config)
            new_config.settings.json.schemas = require("schemastore").json.schemas()
          end,
          settings = {
            json = {
              format = {
                enable = false,
              },
              validate = { enable = true },
            },
          },
        },
        marksman = {},
        intelephense = {},
        volar = {},
        lemminx = {},
      },
    },
  },
}
