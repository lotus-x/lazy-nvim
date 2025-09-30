local opt = vim.opt

opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.colorcolumn = "80"

-- remove auto commenting new lines
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- eslint
vim.g.lazyvim_eslint_auto_format = true

if vim.g.neovide then
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h9"
  -- vim.o.guifont = "Monaspace Neon:h8"
  -- vim.o.guifont = "MonaspiceNe Nerd Font:h8"
  vim.opt.linespace = 1
  vim.g.neovide_padding_top = 5
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 5
  vim.g.neovide_padding_left = 5
  -- vim.g.neovide_font_features = {
  --   ["MonaspiceNe Nerd Font"] = {
  --     "+calt",
  --     "+ss01",
  --     "+ss02",
  --     "+ss03",
  --     "+ss04",
  --     "+ss05",
  --     "+ss06",
  --     "+ss07",
  --     "+ss08",
  --     "+liga",
  --   },
  -- }
end

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  once = true,
  callback = function()
    if vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1 then
      vim.g.clipboard = {
        copy = {
          ["+"] = "win32yank.exe -i --crlf",
          ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
          ["+"] = "win32yank.exe -o --lf",
          ["*"] = "win32yank.exe -o --lf",
        },
      }
    elseif vim.fn.has("unix") == 1 then
      if vim.fn.executable("xclip") == 1 then
        vim.g.clipboard = {
          copy = {
            ["+"] = "xclip -selection clipboard",
            ["*"] = "xclip -selection clipboard",
          },
          paste = {
            ["+"] = "xclip -selection clipboard -o",
            ["*"] = "xclip -selection clipboard -o",
          },
        }
      elseif vim.fn.executable("xsel") == 1 then
        vim.g.clipboard = {
          copy = {
            ["+"] = "xsel --clipboard --input",
            ["*"] = "xsel --clipboard --input",
          },
          paste = {
            ["+"] = "xsel --clipboard --output",
            ["*"] = "xsel --clipboard --output",
          },
        }
      end
    end

    vim.opt.clipboard = "unnamedplus"
  end,
  desc = "Lazy load clipboard",
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if not client then
      return
    end

    -- When the client is Biome, add an automatic event on
    -- save that runs Biome's "source.fixAll.biome" code action.
    -- This takes care of things like JSX props sorting and
    -- removing unused imports.
    if client.name == "biome" then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("BiomeFixAll", { clear = true }),
        callback = function()
          vim.lsp.buf.code_action({
            context = {
              only = { "source.fixAll.biome" },
              diagnostics = {},
            },
            apply = true,
          })
        end,
      })
    end
  end,
})
