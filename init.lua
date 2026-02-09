vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.tabstop = 2        -- Número de espacios que ocupa un <Tab>
vim.opt.shiftwidth = 2     -- Número de espacios usados al auto-indent



--JAVA
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    require("config.java")
  end,
})



require("config.lazy")
require("config.lsp")
require("config.cmp")
require("config.keymaps")
