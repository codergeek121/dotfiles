return { 
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
    { "<leader>gs", "<cmd>Ge:<cr>", desc = "Git status" },
    { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git diff" },
    { "<leader>gh", "<cmd>0Gclog<cr>", desc = "Git history" },
  }
}
