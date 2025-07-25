return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    local notify = require("notify")
    notify.setup({
      stages = "fade",
      timeout = 3000,
      background_colour = "#1e1e2e",
      render = "default",
    })
    vim.notify = notify
  end,
}

