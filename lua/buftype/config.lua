-- buftype/config.lua
local M = {}

M.options = {
  dim_hl             = "BufTypeDim",
  error_hl           = "BufTypeError",
  done_hl            = "BufTypeDone",
  show_wpm           = true,
  show_mode_indicator = false,  -- set true if you don't use lualine
}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
