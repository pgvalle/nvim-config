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
map('n', '<leader>ff', function()
    vim.fn.system("git status")
    if vim.v.shell_error == 0 then
        vim.cmd('Telescope git_files')
    else
        vim.cmd('Telescope find_files')
    end
end)

map('n', '<leader>fb', ':Telescope buffers<Enter>')
map('n', '<leader>lg', ':Telescope live_grep<Enter>')
