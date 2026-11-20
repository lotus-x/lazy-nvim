-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local group = vim.api.nvim_create_augroup("user_autocmds", { clear = true })

-- don't continue comments on new lines (ftplugins reset formatoptions, so set it per filetype)
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable comment continuation",
})

-- handlebars templates are edited as html
vim.filetype.add({ extension = { hbs = "html" } })

-- tilt (Tiltfile is detected natively, but has no commentstring)
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = "tiltfile",
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
  desc = "Tiltfile commentstring",
})

vim.api.nvim_create_user_command("CopyPath", function()
  local full_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", full_path)
end, { desc = "Copy the current file's absolute path" })

-- restore cursor after exiting nvim
vim.api.nvim_create_autocmd("VimLeave", {
  group = group,
  callback = function()
    vim.opt.guicursor = "a:ver25"
  end,
})
