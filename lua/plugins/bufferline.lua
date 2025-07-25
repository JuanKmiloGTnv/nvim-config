return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- también puedes usar "tabs"
        diagnostics = "nvim_lsp", -- muestra errores de LSP si usas
        separator_style = "slant", -- también puedes probar: "thick", "thin", "slope"
        show_buffer_close_icons = false,
        show_close_icon = false,
        enforce_regular_tabs = true,
        always_show_bufferline = true,
      },
    })

    -- Atajos útiles
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Siguiente buffer" })
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Buffer anterior" })
    -- Cerrar el buffer actual
    vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { desc = "Cerrar buffer actual" })

   end,

}

