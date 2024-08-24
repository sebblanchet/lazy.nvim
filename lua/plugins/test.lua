return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        "nvim-neotest/neotest-python",
        "rustaceanvim.neotest",
      },
    },
  },
}
