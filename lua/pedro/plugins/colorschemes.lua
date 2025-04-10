return {
    'Mofiqul/vscode.nvim',
    config = function()
        require('vscode').setup({
            style = 'dark',
            transparent = true,
            italic_comments = true,
            underline_links = true,
            disable_nvimtree_bg = true,
            terminal_colors = true
        })
    end
}
