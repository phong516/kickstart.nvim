vim.pack.add {
  { src = 'https://github.com/akinsho/toggleterm.nvim', version = vim.version.range '*' },
}

require('toggleterm').setup {
  open_mapping = [[<c-\>]],
  direction = 'float',
}

vim.keymap.set('n', '<leader>tt', '<Cmd>ToggleTerm<CR>', { desc = 'Toggle terminal', silent = true })
