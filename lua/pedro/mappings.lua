-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local map = function(mode, bind, cmd)
  vim.keymap.set(mode, bind, cmd, { noremap = true, silent = true })
end

map('n', '<leader>q', vim.cmd.quit)

map('n', '<leader>ff', ':Telescope find_files<Enter>')
map('n', '<leader>fb', ':Telescope buffers<Enter>')

