local M = {}

-- copy the absolute path of the current buffer
local function copyFileAbsolutePath()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

-- copy the relative path of the current buffer
local function copyFileRelativePath()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

M.copyFileAbsolutePath = copyFileAbsolutePath
M.copyFileRelativePath = copyFileRelativePath

return M
