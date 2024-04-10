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

      require("lspconfig.configs").vtsls = require("vtsls").lspconfig
    end,
    opts = function(_, opts)
      local mason_registry = require("mason-registry")
      local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
        .. "/node_modules/@vue/language-server"

      return vim.tbl_deep_extend("force", opts, {
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
          marksman = {},
          intelephense = {},
          volar = {},
          lemminx = {},
          emmet_language_server = {},
          typos_lsp = {},
          vtsls = {
            filetypes = {
              "javascript",
              "javascriptreact",
              "javascript.jsx",
              "typescript",
              "typescriptreact",
              "typescript.tsx",
              "vue",
            },
            settings = {
              vtsls = {
                autoUseWorkspaceTsdk = true,
                tsserver = {
                  globalPlugins = {
                    {
                      name = "@vue/typescript-plugin",
                      location = vue_language_server_path,
                      languages = { "javascript", "typescript", "vue" },
                      configNamespace = "typescript",
                      enableForWorkspaceTypeScriptVersions = true,
                    },
                  },
                },
              },
              typescript = {
                -- tsserver = {
                --   log = "verbose",
                -- },
                inlayHints = {
                  parameterNames = { enabled = "literals" },
                  parameterTypes = { enabled = true },
                  variableTypes = { enabled = true },
                  propertyDeclarationTypes = { enabled = true },
                  functionLikeReturnTypes = { enabled = true },
                  enumMemberValues = { enabled = true },
                },
              },
            },
          },
        },
      })
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
}
