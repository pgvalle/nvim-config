return {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
        vim.lsp.enable('clangd')
    end
}
