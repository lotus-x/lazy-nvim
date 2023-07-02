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
      format = { timeout_ms = 20000, async = true },
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
        dockerls = {},
        vimls = {},
        cssls = {},
        cssmodules_ls = {},
        yamlls = {
          on_new_config = function(new_config)
            new_config.settings.yaml.schemaStore.enable = false
            new_config.settings.yaml.schemas = new_config.settings.yaml.schemas or {}
            vim.list_extend(new_config.settings.yaml.schemas, require("schemastore").yaml.schemas())
          end,
          settings = {
            yaml = {
              keyOrdering = false,
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
        marksman = {},
        ruff_lsp = {},
        pyright = {},
      },
    },
  },
}
