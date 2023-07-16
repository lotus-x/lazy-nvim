return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup({
        logging = true,
        log_level = vim.log.levels.WARN,
        modifiable = false,
        filetype = {
          typescript = {
            require("formatter.filetypes.typescript").prettierd,
          },
          typescriptreact = {
            require("formatter.filetypes.typescript").prettierd,
          },
          javascript = {
            require("formatter.filetypes.javascript").prettierd,
          },
          javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettierd,
          },
          vue = {
            require("formatter.defaults").prettierd,
          },
          css = {
            require("formatter.filetypes.css").prettierd,
          },
          scss = {
            require("formatter.defaults").prettierd,
          },
          less = {
            require("formatter.defaults").prettierd,
          },
          html = {
            require("formatter.filetypes.html").prettierd,
          },
          json = {
            require("formatter.filetypes.json").prettierd,
          },
          jsonc = {
            require("formatter.defaults").prettierd,
          },
          yaml = {
            require("formatter.filetypes.yaml").prettierd,
          },
          markdown = {
            require("formatter.filetypes.markdown").prettierd,
          },
          ["markdown.mdx"] = {
            require("formatter.defaults").prettierd,
          },
          graphql = {
            require("formatter.filetypes.graphql").prettierd,
          },
          handlebars = {
            require("formatter.defaults").prettierd,
          },
          gohtmltmpl = {
            require("formatter.defaults").prettierd,
          },
          go = {
            require("formatter.filetypes.go").golines,
            require("formatter.filetypes.go").gofumpt,
            {
              exe = "goimports-reviser",
              stdin = false,
            },
          },
          toml = {
            require("formatter.filetypes.toml").taplo,
          },
          python = {
            require("formatter.filetypes.python").black,
          },
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
          luau = {
            require("formatter.filetypes.lua").stylua,
          },
          sh = {
            require("formatter.filetypes.sh").shfmt,
          },
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
      })

      local supports_format = function(client)
        if
          client.config
          and client.config.capabilities
          and client.config.capabilities.documentFormattingProvider == false
        then
          return false
        end
        return client.supports_method("textDocument/formatting")
          or client.supports_method("textDocument/rangeFormatting")
      end

      local formatterGroup = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          local bufnr = vim.api.nvim_get_current_buf()
          local clients = vim.lsp.get_active_clients({ bufnr = bufnr })

          local shouldLspFormat = false
          for _, client in ipairs(clients) do
            if supports_format(client) then
              shouldLspFormat = true
            end
          end
          if shouldLspFormat then
            vim.lsp.buf.format({ async = false })
          end

          vim.cmd("FormatWrite")
        end,
        group = formatterGroup,
      })
    end,
  },
}
