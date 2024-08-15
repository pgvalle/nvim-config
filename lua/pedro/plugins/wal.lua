return {
  'uZer/pywal16.nvim',
  config = function()
    require('pywal16').setup()
    vim.cmd 'colorscheme pywal16'
    -- fix wrong comment background
    vim.cmd 'highlight Comment guibg=none ctermbg=none'
  end,
  priority = 1000
}
