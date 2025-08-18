return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({
      ui = {
        border = "rounded",
        title = true,
        winblend = 10,
      },
      lightbulb = {
        enable = true,
        sign = true,
        virtual_text = false,
      },
      code_action = {
        show_server_name = true,
        extend_gitsigns = true,
      },
      symbol_in_winbar = {
        enable = true,
        separator = " > ",
        hide_keyword = true,
        show_file = true,
        folder_level = 1,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- para el resaltado avanzado
    "nvim-tree/nvim-web-devicons",     -- iconos bonitos
  },
}

