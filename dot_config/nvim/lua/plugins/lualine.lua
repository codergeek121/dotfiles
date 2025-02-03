return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = {
      lualine_b = {
        {
        "branch", "diff", "diagnostics",
        on_click = function()
          require("lazy").load({ plugins = { "telescope.nvim" } })
          vim.cmd("Telescope git_branches")
        end,
        }
      }
    }
    return opts
  end,
}

