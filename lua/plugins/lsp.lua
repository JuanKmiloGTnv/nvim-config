return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls", "pyright", "html", "cssls","jdtls",
    },
    automatic_enable = true, -- ✅ ESTA es la forma correcta
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}

