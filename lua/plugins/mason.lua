return {
  {
    "mason-org/mason.nvim",
    -- dependencies = { "mason-org/mason-registry" },
    opts = {
      ui = {
        border = "rounded",
      },
      ensure_installed = {
        "golines",

        "php-cs-fixer",
        "blade-formatter",

        "typos",
        "typos-lsp",
      },
    },
  },
}
