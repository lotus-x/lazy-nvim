return {
  {
    "stevearc/overseer.nvim",
    opts = {
      component_aliases = {
        default = {
          "on_exit_set_status",
          "on_complete_notify",
          { "on_complete_dispose", require_view = { "SUCCESS", "FAILURE" } },
          { "open_output", direction = "float", focus = true },
        },
      },
    },
  },
}
