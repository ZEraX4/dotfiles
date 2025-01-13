-- Smooth cursor movement.
return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
    enabled = not vim.g.neovide,
  },

  -- Smooth scrolling.
  {
    "karb94/neoscroll.nvim",
    enabled = not vim.g.neovide,
    config = function()
      require("neoscroll").setup({})
    end,
  },
}
