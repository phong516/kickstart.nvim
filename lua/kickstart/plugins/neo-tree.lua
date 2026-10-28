-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle file explorer', silent = true })
vim.keymap.set('n', '<leader>bt', '<Cmd>Neotree focus source=buffers position=left<CR>', { desc = 'Focus open-file list', silent = true })

require('neo-tree').setup {}

local function set_explorer_background()
  for _, group in ipairs({ 'NeoTreeNormal', 'NeoTreeNormalNC' }) do
    local highlight = vim.api.nvim_get_hl(0, { name = group, link = false })
    highlight.bg = '#1e202b'
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

set_explorer_background()
vim.api.nvim_create_autocmd('ColorScheme', { callback = set_explorer_background })
