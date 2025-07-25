return {
  "stevearc/overseer.nvim",
  dependencies = { "akinsho/toggleterm.nvim" }, -- Necesitamos toggleterm para la estrategia
  config = function()
    local overseer = require("overseer")
    overseer.setup({
      templates = { "builtin" },
      strategy = {
        "toggleterm",
        direction = "horizontal", -- Terminal horizontal
        open_on_start = true,     -- Abre automáticamente al ejecutar
        close_on_exit = false,    -- Mantiene la terminal abierta al terminar
      },
    })

    -- Plantilla para correr archivo Python actual
    overseer.register_template({
      name = "Run current python file",
      builder = function()
        local file = vim.fn.expand("%:p")
        return {
          cmd = { "python3", file },
          components = { "default" },
        }
      end,
      condition = {
        filetype = { "python" },
      },
    })

    -- Keymap para correr el archivo actual
    vim.keymap.set("n", "<leader>p", function()
      overseer.run_template({ name = "Run current python file" })
    end, { desc = "Run Python file with Overseer" })

    -- Keymap para reejecutar la última tarea
    vim.keymap.set("n", "<leader>r", function()
      overseer.run_action("restart")
    end, { desc = "Restart last Overseer task" })
  end,
}

