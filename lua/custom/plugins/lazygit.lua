require('custom.plugins.toggleTerm')

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new {
  cmd = 'lazygit',
  hidden = true,
  direction = 'float',
}

vim.keymap.set('n', '<leader>gg', function()
  if vim.fn.executable 'lazygit' ~= 1 then
    vim.notify('LazyGit is not installed. Install the lazygit command to use this shortcut.', vim.log.levels.WARN)
    return
  end

  lazygit:toggle()
end, { desc = 'Open LazyGit' })

