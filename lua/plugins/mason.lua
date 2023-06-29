return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "js-debug-adapter",
      })
    end,
  },
}
