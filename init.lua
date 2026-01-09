vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.tabstop = 2        -- Número de espacios que ocupa un <Tab>
vim.opt.shiftwidth = 2     -- Número de espacios usados al auto-indent

-- Copiar al portapapeles
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copiar al portapapeles" })

-- Cortar al portapapeles
vim.keymap.set({ "n", "v" }, "<leader>x", '"+d', { desc = "Cortar al portapapeles" })

-- Pegar desde el portapapeles
vim.keymap.set({ "n", "v" }, "<leader>v", '"+p', { desc = "Pegar del portapapeles" })

-- Pegar sin sobreescribir el portapapeles
vim.keymap.set("v", "<leader>V", '"_dP', { desc = "Pegar limpio" })



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
--vim.keymap.set("n", "<leader>r", function()
--  require("config.run")._RUN_FILE()
--end, { desc = "Ejecutar archivo actual" })

