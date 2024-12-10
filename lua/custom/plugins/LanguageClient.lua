return {
  {
    'autozimu/LanguageClient-neovim',
    branch = 'next',
    build = 'bash install.sh',
    config = function()
      -- Configure LanguageClient-neovim
      vim.g.LanguageClient_serverCommands = {
        cpp = { 'clangd', '-j=5', '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes' },
        c = { 'clangd', '-j=5', '-completion-style=detailed', '-background-index', '-all-scopes-completion', '--suggest-missing-includes' },
        python = { 'pyls' },
        rust = { 'rls' },
      }
      vim.g.LanguageClient_diagnosticsList = 'Disabled'

      -- Key mappings
      local keymap = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      keymap('n', '<F3>', ':call LanguageClient#textDocument_definition()<CR>', opts)
      keymap('n', '<F4>', ':call LanguageClient#textDocument_hover()<CR>', opts)
      keymap('n', '<F5>', ':call LanguageClient#textDocument_references()<CR>', opts)
      keymap('n', '<F6>', ':call LanguageClient_contextMenu()<CR>', opts)
    end,
  },
}
