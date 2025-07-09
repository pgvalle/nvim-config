-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local map = function(modes, comb, cmd)
  vim.keymap.set(modes, comb, cmd, {
    noremap = true,
    silent = true
  })
end

map('n', '<leader>q', vim.cmd.quit)

-- telescope
map('n', '<leader>gs', ':Telescope git_status<Enter>')
map('n', '<leader>gf', ':Telescope git_files<Enter>')
map('n', '<leader>ff', ':Telescope find_files<Enter>')
map('n', '<leader>b', ':Telescope buffers<Enter>')
