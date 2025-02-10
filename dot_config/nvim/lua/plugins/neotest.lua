return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "zidhuss/neotest-minitest"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-minitest")({
          test_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rails",
              "test",
            })
          end
        })
      }
    })
  end,
  keys = {
    {"<leader>t", "", desc = "+test"},
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>tT", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "Run All Test Files" },
    { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Test" }
  },
}
