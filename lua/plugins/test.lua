return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-jest",
      "sidlatau/neotest-dart",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {},
        ["neotest-jest"] = {},
        ["neotest-dart"] = {},
      },
    },
  },
}
