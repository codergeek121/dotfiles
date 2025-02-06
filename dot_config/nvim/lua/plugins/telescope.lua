return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
	mappings = {
	  i = {
	    ["<esc>"] = actions.close
	  },
	},
	preview = {
	  mime_hook = function(filepath, bufnr, opts)

	    local is_image = function(filepath)
	      local image_extensions = {'png','jpg'}
	      local split_path = vim.split(filepath:lower(), '.', {plain=true})
	      local extension = split_path[#split_path]
	      return vim.tbl_contains(image_extensions, extension)
	    end

	    local preview_width = function()
	      if opts.winid then
		return vim.api.nvim_win_get_width(opts.winid)
	      end
	      return 40
	    end

	    if is_image(filepath) then
	      local term = vim.api.nvim_open_term(bufnr, {})
	      local function send_output(_, data, _ )
		for _, d in ipairs(data) do
		  vim.api.nvim_chan_send(term, d..'\r\n')
		end
	      end
	      vim.fn.jobstart(
		{
		  'viu', filepath, '--width', preview_width()
		}, 
		{on_stdout=send_output, stdout_buffered=true, pty=true})
	    else
	      require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
	    end
	  end
	}
      }
    }
  end,
  keys = {
    { "<leader><space>", "<cmd>Telescope git_files<cr>", desc = "Find files" },
    { "<leader>f", "<cmd>Telescope live_grep<cr>", desc = "Find files" },
  }
}
