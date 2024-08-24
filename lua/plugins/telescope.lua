return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
    { "fg", "<cmd>Telescope live_grep<cr>", desc = "find word" },
    --local builtin = require("telescope.builtin")
    --vim.keymap.set("n", "ff", function()
    --  return builtin.find_files({ hidden = true })
    --end, {})
    --vim.keymap.set("n", "fi", builtin.git_files, {})
    --vim.keymap.set("n", "fg", builtin.live_grep, {})
    --vim.keymap.set("n", "fb", builtin.buffers, {})
    --vim.keymap.set("n", "fh", builtin.help_tags, {})
  },
}
