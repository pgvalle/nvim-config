return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip'
  },
  config = function()
    -- setting up lsp servers
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    local lspconfig = require('lspconfig')
    lspconfig.clangd.setup({})

    -- setting up autocompletion
    local cmp = require('cmp')
    --[[cmp.setup({
      sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'},
      },
      --- (Optional) Show source name in completion menu
      formatting = lsp_zero.cmp_format({details = true}),
    })]]
  end
}
