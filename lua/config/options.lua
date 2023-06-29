-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

local opt = vim.opt

opt.relativenumber = false

opt.shell = "/bin/bash"

vim.cmd([[
" for go template syntax highlighting
function DetectGoHtmlTmpl()
    if expand('%:e') == "html" && search("{{") != 0
        setfiletype gohtmltmpl
    endif
endfunction

augroup filetypedetect
    " gohtmltmpl
    au BufRead,BufNewFile *.html call DetectGoHtmlTmpl()
augroup END
]])

vim.cmd([[
function! Is_WSL() abort
  let proc_version = '/proc/version'
  return filereadable(proc_version)
        \  ? !empty(filter(
        \    readfile(proc_version, '', 1), { _, val -> val =~? 'microsoft' }))
        \  : v:false
endfunction

if Is_WSL()
  let g:clipboard = {
    \   'name': 'WslClipboard',
    \   'copy': {
    \      '+': 'clip.exe',
    \      '*': 'clip.exe',
    \    },
    \   'paste': {
    \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \   },
    \   'cache_enabled': 0,
    \ }
endif
]])

-- remove auto commenting new lines
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h11"
  vim.opt.linespace = 1
  vim.g.neovide_padding_top = 5
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 5
  vim.g.neovide_padding_left = 5
end

local latte = require("catppuccin.palettes").get_palette("latte")

vim.cmd([[highlight! NeoTreeCursorLine guibg=]] .. latte.crust)

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })
