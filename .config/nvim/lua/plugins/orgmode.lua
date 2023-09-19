return {
  {
    "nvim-orgmode/orgmode",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter", lazy = true },
    },
    event = "VeryLazy",
    config = function()
      -- Load treesitter grammar for org
      require("orgmode").setup_ts_grammar()

      -- Setup treesitter
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "org" },
        },
        ensure_installed = { "org" },
      })

      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = { "~/journal/agenda/*", "~/Projects/*/TODO.org" },
        org_default_notes_file = "~/journal/refile.org",
        org_ellipsis = "  ",
        org_hide_leading_stars = true,
        org_todo_keywords = { "TODO", "|", "DONE" }, -- Might need to add on hold someday here
        win_split_mode = "float",
        org_hide_emphasis_markers = true,
        org_highlight_latex_and_related = "entities",
      })
    end,
  },
  {
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup({
        concealcursor = true, -- If false then when the cursor is on a line underlying characters are visible

        symbols = {
          -- list symbol
          list = "•",
          -- headlines can be a list
          headlines = { "◉", "○", "✸", "✿" },
          checkboxes = {
            half = { "?", "OrgTSCheckboxHalfChecked" },
            done = { "✓", "OrgDone" },
            todo = { " ", "OrgTODO" },
          },
        },
      })
    end,
  },
}
