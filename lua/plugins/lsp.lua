return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls", 
			"pyright", 
			"html", 
			"cssls",
			"jdtls",
			"rust_analyzer",
    },
    automatic_enable = true,

  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}

