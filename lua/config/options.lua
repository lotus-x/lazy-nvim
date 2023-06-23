-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

local opt = vim.opt

opt.relativenumber = false

vim.cmd([[
if exists("g:neovide")
    set guifont=FiraCode\ Nerd\ Font:h9
    let g:neovide_hide_mouse_when_typing = v:true
    " let g:neovide_refresh_rate = 144
    " let g:neovide_refresh_rate_idle = 60
    let g:neovide_no_idle = v:true
    let g:neovide_cursor_vfx_mode = "pixiedust"
    let g:neovide_cursor_vfx_mode = "sonicboom"

    let g:neovide_scale_factor = 1.0
    function! ChangeScaleFactor(delta)
      let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
endif
]])
