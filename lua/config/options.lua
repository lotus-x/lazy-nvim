local opt = vim.opt

opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.colorcolumn = "80"

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
