-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("x", "Y", [["+y]])

vim.keymap.set(
  "n",
  "<leader>cb",
  [[:set expandtab<cr>:center 80<cr>0<esc>vlc/*<esc>A<esc>40A<space><esc>d80<bar>vhc*/<esc>O/*<space><esc>74A-<esc>a<space>*/<esc>yyjp:set expandtab!<cr>]],
  { silent = true }
)

vim.keymap.set(
  "n",
  "<leader>cB",
  [[:set expandtab<cr>:center 80<cr>hhv0r-vllc/*<space><esc>A<space><esc>40A-<esc>d80<bar>vhh<space>c*/<esc>:set expandtab!<cr>]],
  { silent = true }
)

vim.keymap.set("n", "<leader>cL", "<cmd>LspRestart<cr>", { silent = true })
