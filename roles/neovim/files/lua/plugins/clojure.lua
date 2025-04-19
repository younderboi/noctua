return {
  {
    "Olical/conjure",
    ft = { "clojure", "bb" },
    init = function()
      vim.g["conjure#mapping#prefix"] = "<localleader>" -- or "<leader>cj"
    end,
  },
  {
    "PaterJason/cmp-conjure",
    dependencies = { "hrsh7th/nvim-cmp", "Olical/conjure" },
  },
  {
    "guns/vim-sexp",
    ft = { "clojure", "fennel", "lisp", "scheme" },
  },
  {
    "tpope/vim-sexp-mappings-for-regular-people",
    dependencies = { "guns/vim-sexp" },
    ft = { "clojure", "fennel", "lisp", "scheme" },
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy",
  },
}
