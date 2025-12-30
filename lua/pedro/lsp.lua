vim.diagnostic.config({
    virtual_text = true, -- set to false to disable default inline text
    signs = true,        -- show icons in the gutter
    underline = true,    -- underline the problematic text
    update_in_insert = true, -- don't update while in insert mode
    severity_sort = true
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("pedro.lsp", {clear=false}),
    callback = function(args)
        local map = vim.keymap.set
        local opts = {buffer = args.buf, noremap = true, silent = true}
        local client = vim.lsp.get_client_by_id(args.data.client_id)

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
