local options = {
  backup = false,                          -- creates a backup file
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  swapfile = false,                        -- creates a swapfile
  undofile = true,                         -- enable persistent undo
  fileencoding = 'utf-8',                  -- the encoding written to a file

  clipboard = 'unnamedplus',               -- allows neovim to access the system clipboard
  completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = 'a',                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  updatetime = 300,                        -- faster completion (4000ms default)
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)

  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  smartindent = true,                      -- make indenting smarter again

  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  cursorline = true,                       -- highlight the current line
  wrap = false,                            -- display lines as one long line
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = 'yes',                      -- always show the sign column, otherwise it would shift the text each time
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,

  guifont = 'Consolas NF:h13',             -- the font used in graphical neovim applications
}

vim.opt.shortmess:append 'c'

for opt, val in pairs(options) do
  vim.opt[opt] = val
end

vim.cmd 'set whichwrap+=<,>,[,],h,l'
vim.cmd [[set iskeyword+=-]]
