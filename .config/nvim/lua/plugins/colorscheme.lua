return {
  --   -- add gruvbox
  --   { "ellisonleao/gruvbox.nvim" },
  --
  --   -- Configure LazyVim to load gruvbox
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "gruvbox",
  --     },
  --   },
  --
  -- add tokyonight
  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load gruvbox
  require("tokyonight").setup({
    style = "night",
  }),
}
