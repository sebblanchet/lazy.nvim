return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  },
}
