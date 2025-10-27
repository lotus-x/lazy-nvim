local opt = vim.opt

opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.colorcolumn = "80"

-- eslint
vim.g.lazyvim_eslint_auto_format = true

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })
