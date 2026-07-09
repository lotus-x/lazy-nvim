local opt = vim.opt

opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.colorcolumn = "100"

-- eslint
vim.g.lazyvim_eslint_auto_format = false
vim.g.lazyvim_prettier_needs_config = false

if vim.g.neovide then
  -- Set the font with fallback and size
  vim.o.guifont = "Monaspace Neon,JetBrainsMono Nerd Font:h9"
  vim.g.neovide_font_features = {
    ["Monaspace Neon"] = {
      "+calt",
      "+dlig",
      "+liga",
      "+ss01",
      "+ss02",
      "+ss03",
      "+ss04",
      "+ss05",
      "+ss06",
      "+ss07",
      "+ss08",
    },
    ["JetBrainsMono Nerd Font"] = {
      "+calt",
      "+ss01",
      "+ss02",
      "+ss03",
      "+ss04",
      "+ss05",
      "+ss06",
      "+ss07",
      "+ss08",
      "+liga",
    },
  }

  vim.opt.linespace = 1
  -- vim.g.neovide_transparency = 0.95
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0.4
  vim.g.neovide_cursor_vfx_mode = "railgun" -- Visual effect on cursor jump

  -- Normal, Visual, and Command modes paste via "+p
  vim.keymap.set({ "n", "v", "c" }, "<C-v>", '"+p', { silent = true })
  -- Insert mode needs <C-r>+ to paste text correctly without breaking typing flow
  vim.keymap.set("i", "<C-v>", "<C-r>+", { silent = true })
end

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })
