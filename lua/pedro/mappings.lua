-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local function map(mode, cmd, bind)
  vim.keymap.set(mode, cmd, bind, {silent = true})
end

map('n', '<C-q>', vim.cmd.quit)
map('n', '<leader>fv', vim.cmd.Ex)
map('n', '<leader>t', function()
  if vim.loop.os_uname().sysname == 'Windows' then
    vim.cmd.term()
  else
    vim.cmd.term('bash')
  end
end)


map('t', '<C- >', '<C-\\><C-n>:bd!<Enter>')
--[[map('n', '<C- >', function()
  
end)]]


-- Git mappings
map('n', '<leader>Gc', function()
  vim.ui.input({ prompt = 'Write a message to the commit: ' }, function(input)
    print(input)
    vim.cmd('G commit -m "' .. input .. '"')
  end)
end)
