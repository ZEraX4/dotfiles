return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
        },
        indent = {
          enable = true,
          chars = {
            "․",
            "⁚",
            "⁖",
            "⁘",
            "⁙",
          },
          style = {
            "#806d9c",
            "#c06f98",
          },
        },
        line_num = {
          enable = true,
        },
        blank = {
          enable = false,
          style = {
            { bg = "#434437" },
            { bg = "#2f4440" },
            { bg = "#433054" },
            { bg = "#284251" },
          },
        },
      })
    end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
}
