return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          mason = false,
        },
      },
      pip = {
        use_uv = true,
      },
    },
  },
}
