return {
  -- {
  --   "folke/noice.nvim",
  --   enabled = false,
  -- },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    }),
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "folke/which-key.nvim",
    enabled = false,
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   enabled = false,
  -- },

  {
    "echasnovski/mini.surround",
    enabled = false,
  },
}
