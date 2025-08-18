return {
  "stevearc/overseer.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    local overseer = require("overseer")
    overseer.setup({
      templates = { "builtin" },
      strategy = {
        "toggleterm",
        direction = "horizontal",
        open_on_start = true,
        close_on_exit = false,
      },
    })

    -- ==========================
    -- 🔹 Plantilla Python
    -- ==========================
    overseer.register_template({
      name = "Run current python file",
      builder = function()
        local file = vim.fn.expand("%:p")
        return {
          cmd = { "python3", file },
          components = { "default" },
        }
      end,
      condition = { filetype = { "python" } },
    })

    -- ==========================
    -- 🔹 Plantilla Java (corregida)
    -- ==========================
    overseer.register_template({
      name = "Run current java file",
      builder = function()
        local file = vim.fn.expand("%:p")         -- ruta completa del archivo
        local dir = vim.fn.expand("%:p:h")        -- carpeta del archivo
        local class = vim.fn.expand("%:t:r")      -- nombre del archivo sin extensión
        return {
          cmd = { "bash", "-c", "cd " .. dir .. " && javac " .. class .. ".java && java " .. class },
          components = { "default" },
        }
      end,
      condition = { filetype = { "java" } },
    })

    -- ==========================
    -- 🔹 Keymaps
    -- ==========================
    vim.keymap.set("n", "<leader>p", function()
      overseer.run_template({ name = "Run current python file" })
    end, { desc = "Run Python file with Overseer" })

    vim.keymap.set("n", "<leader>j", function()
      overseer.run_template({ name = "Run current java file" })
    end, { desc = "Run Java file with Overseer" })

    vim.keymap.set("n", "<leader>r", function()
      overseer.run_last()
    end, { desc = "Restart last Overseer task" })
  end,
}

