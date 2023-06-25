return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-jest",
      "sidlatau/neotest-dart",
    },
    opts = {
      adapters = {
        ["neotest-go"] = {},
        ["neotest-python"] = {},
        ["neotest-jest"] = {},
        ["neotest-dart"] = {},
      },
    },
  },
}
