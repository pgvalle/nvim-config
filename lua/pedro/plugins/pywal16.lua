return {
  'uZer/pywal16.nvim',
  config = function()
    require('pywal16').setup()
    vim.cmd 'colorscheme pywal16'
    -- fix wrong background for comments
    vim.cmd 'highlight Comment guibg=none ctermbg=none'
  end,
  priority = 1000
}
