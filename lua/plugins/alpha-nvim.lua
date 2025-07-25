return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "  ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
      "  ████╗  ██║██║   ██║██║████╗ ████║",
      "  ██╔██╗ ██║██║   ██║██║██╔████╔██║",
      "  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "        Neovim personalizado        ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "🔍 Buscar archivo", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Archivos recientes", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "󰗼  Salir", ":qa<CR>"),
    }

    dashboard.section.footer.val = function()
      return "🚀 Neovim cargado con Lazy.nvim"
    end

    alpha.setup(dashboard.opts)
  end,
}

