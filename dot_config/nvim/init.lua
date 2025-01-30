require("config.base") -- basic editor configs
require("config.lazy") -- bundler

vim.cmd.colorscheme "catppuccin-mocha"

vim.o.statuscolumn = " %l %s "

vim.opt.guicursor = {
  'n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100'
}
