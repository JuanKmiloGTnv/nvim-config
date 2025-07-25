vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.lsp")
require("config.cmp")
--vim.keymap.set("n", "<leader>r", function()
--  require("config.run")._RUN_FILE()
--end, { desc = "Ejecutar archivo actual" })

