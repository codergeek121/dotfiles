-- configs
vim.cmd.syntax = "on"
vim.g.have_nerd_font = false
vim.o.number = true

-- share clipboard with OS
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.list = true
vim.opt.listchars:append("space:·")

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true
vim.opt.scrolloff = 5

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Focus ←' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Focus →' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Focus ↓' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Focus ↑' })


