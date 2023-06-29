return {
  -- tmux navigator
  {
    "alexghergh/nvim-tmux-navigation",
    keys = function()
      local nvim_tmux_nav = require("nvim-tmux-navigation")

      return {
        { "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, "left" },
        { "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, "Down" },
        { "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, "Up" },
        { "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, "right" },
      }
    end,
  },
}
