return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
    { "fg", "<cmd>Telescope live_grep<cr>", desc = "find word" },
    --vim.keymap.set("n", "ff", function()
    --  return builtin.find_files({ hidden = true })
    --end, {})
  },
}
