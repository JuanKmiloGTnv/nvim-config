-- Copiar al portapapeles
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copiar al portapapeles" })

-- Cortar al portapapeles
vim.keymap.set({ "n", "v" }, "<leader>x", '"+d', { desc = "Cortar al portapapeles" })

-- Pegar desde el portapapeles
vim.keymap.set({ "n", "v" }, "<leader>v", '"+p', { desc = "Pegar del portapapeles" })

-- Pegar sin sobreescribir el portapapeles
vim.keymap.set("v", "<leader>V", '"_dP', { desc = "Pegar limpio" })


