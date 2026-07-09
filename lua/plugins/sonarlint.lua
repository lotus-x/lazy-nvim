return {
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    branch = "main",
    enabled = false,
    opts = {
      filetypes = {
        "cs",
        "dockerfile",
        "python",
        "cpp",
        "java",
        "typescript",
        "typescriptreact",
      },
      connected = {
        -- client_id is the ID of the Sonar LSP
        -- url is the url it wants to connect to
        get_credentials = function(client_id, url)
          -- This must return a string (User token)
          -- This is the default function. You can just set the environment variable.
          return vim.fn.getenv("SONAR_TOKEN")
        end,
      },
      server = {
        cmd = {
          "sonarlint-language-server",
          -- Ensure that sonarlint-language-server uses stdio channel
          "-stdio",
          "-analyzers",
          -- paths to the analyzers you need, using those for python and java in this example
          vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
          vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
          vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
        },
        settings = {
          sonarlint = {
            connectedMode = {
              connections = {
                sonarcloud = {
                  {
                    connectionId = "austaldigitalsolutions",
                    region = "EU",
                    organizationKey = "austaldigitalsolutions",
                    disableNotifications = false,
                  },
                },
              },
            },
          },
        },
        before_init = function(params, config)
          -- Your personal configuration needs to provide a mapping of root folders and project keys
          --
          -- In the future a integration with https://github.com/folke/neoconf.nvim or some similar
          -- plugin, might be worthwhile.
          local project_root_and_ids = {
            ["/home/lotus/dev/IDE-CDRL-UI"] = "AustalDigitalSolutions_IDE-CDRL-UI",
            ["/home/lotus/dev/ide-ui-common"] = "AustalDigitalSolutions_IDE-UI-Common",
          }

          config.settings.sonarlint.connectedMode.project = {
            connectionId = "austaldigitalsolutions",
            projectKey = project_root_and_ids[params.rootPath],
          }
        end,
      },
    },
  },
}
