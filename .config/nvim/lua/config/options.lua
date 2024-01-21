-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- scroll offset
opt.scrolloff = 8

-- keep buffer open
opt.hidden = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
