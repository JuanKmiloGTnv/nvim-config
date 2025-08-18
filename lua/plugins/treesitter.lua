return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "bash", "html", "css","java" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

