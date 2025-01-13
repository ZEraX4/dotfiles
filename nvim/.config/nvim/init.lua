-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.cmd("colorscheme catppuccin")

if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
