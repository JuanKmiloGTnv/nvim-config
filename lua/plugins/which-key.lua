return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {}, -- usa configuración por defecto
  config = function()
    local wk = require("which-key")

    wk.setup({}) -- configuración por defecto

    wk.add({
      { "<leader>f", group = "Buscar" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Archivos" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Texto" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Ayuda" },

      { "<leader>q", group = "Salir" },
      { "<leader>qq", "<cmd>qa<CR>", desc = "Cerrar Neovim" },
    })
  end,
}

