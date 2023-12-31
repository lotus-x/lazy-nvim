return {
  {
    "williamboman/mason.nvim",
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

        "hadolint",

        "cspell",
        "golines",
        "delve",
        "prettierd",
        "prettier",
        "marksman",

        "black",

        "php-cs-fixer",
        "phpcs",
        "blade-formatter",
      },
    },
  },
}
