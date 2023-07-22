return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",

        "lua-language-server",
        "json-lsp",
        "haskell-language-server",
        "vim-language-server",
        "tailwindcss-language-server",
        "css-lsp",
        "cssmodules-language-server",
        "yaml-language-server",

        "cspell",
        "golines",
        "delve",
        "prettierd",
        "prettier",
        "marksman",

        "black",
      },
    },
  },
}
