-- Needs to be set before initializing lazy
vim.g.mapleader = ' '

local function map(mode, cmd, bind)
  vim.api.nvim_set_keymap(mode, cmd, bind, {silent = true})
end

map('n', '<leader>fv', ':Ex<Enter>')
