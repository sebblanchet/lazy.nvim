-- Keymaps are automatically loaded on the VeryLazy event
-- https://www.lazyvim.org/keymaps

-- local function map(mode, lhs, rhs, opts)
--   local options = {
--     noremap = true,
--   }
--   if opts then
--     options = vim.tbl_extend("force", options, opts)
--   end
--   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

local map = LazyVim.safe_keymap_set

-- yank ops
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')
map("v", "<leader>dd", '"_dd')

-- search current word
map(
  "n",
  "fw",
  ":lua require'telescope.builtin'.grep_string({search = vim.fn.expand('<cword>')}) <CR>",
  { silent = true }
)

-- save file
map("n", "ZW", ":w<CR>")
map("n", "<D-s>", ":w<CR>")
map("i", "<D-s>", ":w<CR>")
map("x", "<D-s>", ":w<CR>")
map("s", "<D-s>", ":w<CR>")

-- disable arrow keys to force yourself to learn
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- kill tab
map("n", "<leader>qx", ":bd<cr>")
