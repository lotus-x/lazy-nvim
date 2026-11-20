return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- LazyVim defines the DAP signs from these icons when nvim-dap loads.
      -- Format: text, or { text, texthl, linehl }
      icons = {
        dap = {
          Breakpoint = "●",
          BreakpointCondition = "",
          BreakpointRejected = { "", "DiagnosticError" },
          LogPoint = "◆",
          Stopped = { "", "DiagnosticWarn", "DapStoppedLine" },
        },
      },
    },
  },
}
