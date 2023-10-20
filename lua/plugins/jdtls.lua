return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      vim.list_extend(opts.cmd, {
        "--jvm-arg="
          .. string.format("-javaagent:%s", vim.fn.expand("$HOME/.local/share/nvim/mason/packages/jdtls/lombok.jar")),
      })
    end,
  },
}
