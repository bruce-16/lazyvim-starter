-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local copyUtils = require("fns.copy")
local mentionUtils = require("fns.mention")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- nohls
map("n", "<C-n>", "<cmd>nohls<cr>", { desc = "nohls", remap = true })
-- copy the absolute path of the current buffer
map("n", "<leader>bC", copyUtils.copyFileAbsolutePath, { desc = "Copy the absolute path of the current buffer." })
-- copy the relative path of the current buffer
map("n", "<leader>bc", copyUtils.copyFileRelativePath, { desc = "Copy the relative path of the current buffer." })
--jk == esc
map("i", "jk", "<esc>", { desc = "Esc" })
--
-- disable a-j
-- Move Lines
map("n", "<A-j>", "<Nop>", {})
map("n", "<A-k>", "<Nop>", {})
map("i", "<A-j>", "<Nop>", {})
map("i", "<A-k>", "<Nop>", {})
map("v", "<A-j>", "<Nop>", {})
map("v", "<A-k>", "<Nop>", {})
