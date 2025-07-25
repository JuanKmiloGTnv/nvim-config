return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
    "ahmedkhalf/project.nvim", -- NUEVO
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "^.git/",
          "^jd2/logs/",
          "node_modules/",
        },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
        projects = {}, -- NUEVO
      },
    })

    -- Cargar extensiones
    pcall(telescope.load_extension, "fzf")
    pcall(telescope.load_extension, "file_browser")
    pcall(telescope.load_extension, "projects") -- NUEVO

    -- Atajos útiles
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Buscar archivos" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Buscar texto" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buscar buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Buscar ayuda" })
    vim.keymap.set("n", "<leader>fe", function()
      require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", select_buffer = true })
    end, { desc = "Explorador de archivos" })

    vim.keymap.set("n", "<leader>fp", function() -- NUEVO
      require("telescope").extensions.projects.projects({})
    end, { desc = "Buscar proyectos" })
  end,
}

