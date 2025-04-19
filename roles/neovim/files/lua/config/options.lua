-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Tabs n stuff
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for autoindent
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.clipboard = "unnamedplus"

-- conjure/clojure/babashka
vim.g["conjure#log#hud#enabled"] = false
vim.g["conjure#mapping#doc_word"] = "K"

vim.filetype.add({
  extension = {
    bb = "clojure",
  },
})
