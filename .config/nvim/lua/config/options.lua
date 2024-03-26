-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#e45454" })
vim.api.nvim_set_hl(0, "Error", { fg = "#e45454" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#e45454" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#e45454" })

vim.api.nvim_set_hl(0, "InfoMsg", { fg = "#00b7e4" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#00b7e4" })
vim.api.nvim_set_hl(0, "Info", { fg = "#00b7e4" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#00b7e4" })

vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#f5942f" })
vim.api.nvim_set_hl(0, "DiagnosticWarning", { fg = "#f5942f" })
vim.api.nvim_set_hl(0, "Warning", { fg = "#f5942f" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#f5942f" })

vim.api.nvim_set_hl(0, "HintMsg", { fg = "#2faf64" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#2faf64" })
vim.api.nvim_set_hl(0, "Hint", { fg = "#2faf64" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#2faf64" })
