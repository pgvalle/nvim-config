local map = vim.keymap.set
local opts = {noremap = true, silent = true}

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

-- Lsp
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("pedro.lsp", {clear=false}),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local opts = {buffer = args.buf, noremap = true, silent = true}

        opts.desc = 'Go to declaration'
        map('n', 'gd', vim.lsp.buf.declaration, opts)

        opts.desc = 'Go to definition'
        map('n', 'gD', vim.lsp.buf.definition, opts)

        opts.desc = 'Rename symbol'
        map('n', '<leader>rn', vim.lsp.buf.rename, opts)

        vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})

        -- only add autoformat to clients that support it
        if client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("pedro.lsp", {clear = false}),
                buffer = args.buf,
                callback = function(args)
                    vim.lsp.buf.format({id = client.id, async = false})
                end,
            })
        end
    end
})
