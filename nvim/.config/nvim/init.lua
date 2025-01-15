-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.cmd("colorscheme catppuccin")
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = {
    only_current_line = true,
  },
})
if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
