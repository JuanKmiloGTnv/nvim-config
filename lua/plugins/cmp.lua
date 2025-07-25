return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "L3MON4D3/LuaSnip",             -- Motor de snippets
      "saadparwaiz1/cmp_luasnip",     -- Conexión entre cmp y luasnip
      "hrsh7th/cmp-nvim-lsp",         -- Fuente de completado para LSP
      "hrsh7th/cmp-buffer",           -- Fuente de completado para buffer actual
      "hrsh7th/cmp-path",             -- Fuente de rutas del sistema
      "rafamadriz/friendly-snippets", -- Colección de snippets predefinidos
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Cargar snippets predefinidos
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}

