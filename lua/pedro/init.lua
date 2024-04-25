require('pedro.options')
require('pedro.mappings')

require('pedro.lazy')

-- Depending on colorscheme can only be called after initializing lazy
local scheme_ok, _ = pcall(vim.cmd.colorscheme, 'vscode')
if not scheme_ok then
  vim.cmd.colorscheme('habamax')
end

