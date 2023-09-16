return {
  {
    "rmagatti/auto-session",
    lazy = false,
    init = function()
      vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,localoptions"
    end,
    opts = {
      log_level = "error",
      pre_save_cmds = { "tabdo Neotree close", "AerialCloseAll" },
      post_restore_cmds = { "tabdo Neotree show reveal" },
    },
  },
}
