-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local function map(mode, lhs, rhs, opts)
  local options = {
    noremap = true,
  }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- yank ops
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')
map("v", "<leader>dd", '"_dd')

-- go to previous file
map("n", "<leader>b", ":e#<CR>", { silent = true })

-- search current word
map(
  "n",
  "fw",
  ":lua require'telescope.builtin'.grep_string({search = vim.fn.expand('<cword>')}) <CR>",
  { silent = true }
)

-- save file
map("n", "ZW", ":w<CR>")

-- disable arrow keys to force yourself to learn
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")
