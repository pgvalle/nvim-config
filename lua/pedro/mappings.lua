-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local map = function(mode, bind, cmd)
  vim.keymap.set(mode, bind, cmd, { noremap = true, silent = true })
end

map('n', '<leader>q', vim.cmd.quit)

map('n', '<leader>ff', function()
  require('telescope.builtin').find_files({
    -- hidden = false,
    -- no_ignore = false
  })
end)


map('n', '<leader>fb', ':Telescope buffers<Enter>')

map('n', '<leader>e', vim.cmd.Ex)
