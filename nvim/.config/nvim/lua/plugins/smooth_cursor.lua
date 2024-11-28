-- Smooth cursor movement.
return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
  },

  -- Smooth scrolling.
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({})
    end,
  },
}
