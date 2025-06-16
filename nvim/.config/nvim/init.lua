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
  vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
