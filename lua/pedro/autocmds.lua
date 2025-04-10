vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "o" })
  end,
})
