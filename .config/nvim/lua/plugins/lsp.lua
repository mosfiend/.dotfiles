return {
  {
    "neovim/nvim-lspconfig",
    --     -- other settings removed for brevity
    opts = {
      diagnostics = {
        underline = false,
        update_in_insert = false,
        virtual_text = {
          spacing = 0,
          source = "if_many",
          prefix = "",
        },
        severity_sort = false,
      },
      inlay_hints = {
        enabled = true,
      },
    },
    -- config = function(_, opts)
    --   local Util = require("lazyvim.util")
    --
    --   if Util.has("neoconf.nvim") then
    --     local plugin = require("lazy.core.config").spec.plugins["neoconf.nvim"]
    --     require("neoconf").setup(require("lazy.core.plugin").values(plugin, "opts", false))
    --   end
    --   -- setup autoformat
    --   require("lazyvim.plugins.lsp.format").setup(opts)
    --   -- setup formatting and keymaps
    --   Util.on_attach(function(client, buffer)
    --     require("lazyvim.plugins.lsp.keymaps").on_attach(client, buffer)
    --   end)
    --
    --   -- diagnostics
    --   for name, icon in pairs({ Error = "E ", Warn = "W ", Hint = "H ", Info = "I " }) do
    --     name = "DiagnosticSign" .. name
    --     vim.fn.sign_define(name, { text = "󱓻 ", texthl = name, numhl = "" })
    --   end
    --
    --   local inlay_hint = vim.lsp.buf.inlay_hint or vim.lsp.inlay_hint
    --
    --   if opts.inlay_hints.enabled and inlay_hint then
    --     Util.on_attach(function(client, buffer)
    --       if client.supports_method("textDocument/inlayHint") then
    --         inlay_hint(buffer, true)
    --       end
    --     end)
    --   end
    --
    --   if type(opts.diagnostics.virtual_text) == "table" and opts.diagnostics.virtual_text.prefix == "icons" then
    --     opts.diagnostics.virtual_text.prefix = vim.fn.has("nvim-0.10.0") == 0 and ""
    --       or function(diagnostic)
    --         local icons = {
    --           Error = "E ",
    --           Warn = "W ",
    --           Hint = "H ",
    --           Info = "I ",
    --         }
    --         for d, icon in pairs(icons) do
    --           if diagnostic.severity == vim.diagnostic.severity[d:upper()] then
    --             return icon
    --           end
    --         end
    --       end
    --   end
    --
    --   vim.diagnostic.config(vim.deepcopy(opts.diagnostics))
    -- end,
  },
}
