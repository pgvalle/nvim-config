local options = {
    backup = false,
    writebackup = false,
    swapfile = false,
    undofile = false,
    fileencoding = 'utf-8',

    clipboard = 'unnamedplus',
    completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
    conceallevel = 0,
    hlsearch = false, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = 'aa',
    pumheight = 10, -- pop up menu height
    showmode = false,
    smartcase = true, -- smart case
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    termguicolors = true, -- set term gui colors (most terminals support this)
    updatetime = 300, -- faster completion (4000ms default)
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)

    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert x spaces for a tab
    smartindent = true, -- make indenting smarter again
    showtabline = 2, -- always show tabs

    cmdheight = 2, -- more space in the neovim command line for displaying messages
    cursorline = true,
    wrap = false,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = 'yes', -- always show the sign column, otherwise it would shift the text each time
    scrolloff = 8, -- is one of my fav
    sidescrolloff = 8
}

vim.g.python_recommended_style = false

vim.opt.shortmess:append('c')

for opt, val in pairs(options) do
    vim.opt[opt] = val
end

vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.cmd('set iskeyword+=-')
