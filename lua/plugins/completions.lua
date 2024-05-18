return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local lsnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()
    local lspkind = require("lspkind")

    lsnip.setup({
      history = true,
      update_events = { "TextChanged", "TextChangedI" },
      enable_autosnippets = true,
    })
    cmp.setup({
      snippet = {
        expand = function(args)
          lsnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<M-.>"] = cmp.mapping({
          i = function()
            if cmp.visible() then
              cmp.abort()
            else
              cmp.complete()
            end
          end,
          c = function()
            if cmp.visible() then
              cmp.close()
            else
              cmp.complete()
            end
          end,
        }),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<tab>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "luasnip", option = { show_autosnippets = true } },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
          ellipsis_char = "...",
          show_labelDetails = true,
          symbol_map = { Copilot = "" },
        }),
      },
      window = {
        completion = {
          winhighlight = "NormalFloat:CmpNormal",
        },
      },
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype("gitcommit", {
      sources = cmp.config.sources({
        { name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
      }, {
        { name = "buffer" },
      }),
    })
  end,
}
