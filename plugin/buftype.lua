-- plugin/buftype.lua
local buftype = require('buftype')

vim.api.nvim_create_user_command('BufType', function()
  buftype.activate()
end, { desc = 'Activate Buffer Typing Mode' })

vim.keymap.set('n', '<leader>uB', function()
  buftype.activate()
end, { desc = 'Buffer Typing Mode' })

-- Auto-deactivate on BufLeave
vim.api.nvim_create_autocmd('BufLeave', {
  callback = function()
    if package.loaded['buftype.session'] then
      require('buftype.session').deactivate()
    end
  end,
})
