return {
  {
    "williamboman/mason.nvim",
    dependencies = { "mason-org/mason-registry" },
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "tree-sitter-cli",

        "lua-language-server",
        "json-lsp",
        "haskell-language-server",
        "vim-language-server",
        "tailwindcss-language-server",
        "css-lsp",
        "cssmodules-language-server",
        "yaml-language-server",
        "vue-language-server",
        "vtsls",

        "hadolint",

        "golines",
        "delve",
        "prettierd",
        "prettier",
        "marksman",

        "black",

        "php-cs-fixer",
        "phpcs",
        "blade-formatter",

        "typos",
        "typos-lsp",
      },
    },
  },
}
