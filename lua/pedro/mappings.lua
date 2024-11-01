-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local map = function(mode, cmd, bind)
  vim.keymap.set(mode, cmd, bind, {silent = true})
end

map('n', '<C-q>', vim.cmd.quit)
map('n', '<leader>ff', ':Telescope find_files<Enter>')

-- vim.ui.input({ prompt = 'Write commit message: ' }, function(input)
