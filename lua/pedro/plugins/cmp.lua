return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer', -- text in buffer
    'hrsh7th/cmp-path', -- filesystem paths
    'L3M0N4D3/LuaSnip', -- snippet engine
    'saadparwaiz1/cmp_luasnip', -- autocompletion
  },

  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      completion = {
        completeopt = 'menu,menuone,preview,noselect'
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      mapping = cmp.mapping.preset.insert({
        -- later
      }),
      sources = cmp.config.sources({
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' }
      })
    })
  end
}
