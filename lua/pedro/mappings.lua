local map = vim.keymap.set
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' ' -- Needs to be set before initializing lazy

-- General
map('n', '<leader>q', vim.cmd.quit, opts)

-- Telescope

local find_files = function()
    vim.fn.system("git status")
    if vim.v.shell_error == 0 then
        vim.cmd('Telescope git_files')
    else
        vim.cmd('Telescope find_files')
    end
end

map('n', '<leader>ff', find_files, opts)
map('n', '<leader>fb', ':Telescope buffers<Enter>')
map('n', '<leader>lg', ':Telescope live_grep<Enter>')

