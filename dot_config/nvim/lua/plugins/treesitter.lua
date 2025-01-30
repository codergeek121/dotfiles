return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "ruby", "javascript", "typescript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end,
}
