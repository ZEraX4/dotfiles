return {
  {
    "folke/which-key.nvim",
    opts = {
      delay = 0,
    },
  },
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
  {
    "akinsho/bufferline.nvim",
    enabled = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disable_mouse = false,
    },
  },
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
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>sB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Brows Files",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
