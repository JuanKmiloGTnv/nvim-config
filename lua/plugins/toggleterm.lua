return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]], -- Puedes cambiar esta tecla si quieres
      direction = "horizontal", -- Puede ser 'vertical', 'horizontal', 'tab', o 'float'
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
    })
    
     -- Atajo personalizado para abrir la terminal con <leader>t
    vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Abrir terminal" })
  end,
}

