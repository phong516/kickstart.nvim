return {
  -- Define a custom configuration for LazyGit using toggleterm.nvim
  "akinsho/toggleterm.nvim", -- Ensure toggleterm.nvim is already installed
  opts = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float", -- Floating terminal window
    })

    local function toggle_lazygit()
      lazygit:toggle()
    end

    -- Set the keymap for LazyGit
    vim.keymap.set("n", "<leader>gg", toggle_lazygit, { desc = "Open LazyGit" })
  end,
}

