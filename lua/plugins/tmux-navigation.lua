return {
  "alexghergh/nvim-tmux-navigation",
  keys = function()
    return {
      { "<C-h>", '<cmd>lua require("nvim-tmux-navigation").NvimTmuxNavigateLeft()<cr>', "left" },
      { "<C-j>", '<cmd>lua require("nvim-tmux-navigation").NvimTmuxNavigateDown()<cr>', "Down" },
      { "<C-k>", '<cmd>lua require("nvim-tmux-navigation").NvimTmuxNavigateUp()<cr>', "Up" },
      { "<C-l>", '<cmd>lua require("nvim-tmux-navigation").NvimTmuxNavigateRight()<cr>', "right" },
    }
  end,
}
