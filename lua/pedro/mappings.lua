-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local map = function(mode, cmd, bind)
  vim.keymap.set(mode, cmd, bind, {silent = true})
end

map('n', '<C-q>', vim.cmd.quit)
map('n', '<leader>fv', vim.cmd.Ex)
map('n', '<leader>t', function()
  if vim.loop.os_uname().sysname == 'Windows' then
    vim.cmd.term()
  else
    vim.cmd.term(os.getenv('SHELL'))
  end
end)

map('n', '<leader>ff', ':Telescope find_files<Enter>')


map('t', '<C-q>', '<C-\\><C-n>:bd!<Enter>')

-- vim.ui.input({ prompt = 'Write commit message: ' }, function(input)
