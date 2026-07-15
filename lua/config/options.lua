local opt = vim.opt

opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.colorcolumn = "100"

-- eslint
vim.g.lazyvim_eslint_auto_format = false
vim.g.lazyvim_prettier_needs_config = true

if vim.g.neovide then
  vim.opt.linespace = 1
  -- vim.g.neovide_opacity = 0.8
  -- vim.g.neovide_window_blur = true
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0.4
  vim.g.neovide_cursor_vfx_mode = "railgun" -- Visual effect on cursor jump

  -- Normal, Visual, and Command modes paste via "+p
  -- vim.keymap.set({ "n", "v", "c" }, "<C-v>", '"+p', { silent = true })
  -- Insert mode needs <C-r>+ to paste text correctly without breaking typing flow
  -- vim.keymap.set("i", "<C-v>", "<C-r>+", { silent = true })
  -- vim.keymap.set("t", "<C-S-v>", [[<C-\><C-n>"+pi]])
  vim.keymap.set("t", "<C-S-v>", function()
    local keys = vim.api.nvim_replace_termcodes('<C-\\><C-n>"+pi', true, false, true)
    vim.api.nvim_feedkeys(keys, "n", false)
  end)

  local function paste()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end
  vim.keymap.set({ "n", "i", "c", "t" }, "<C-v>", paste)
end

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })
