return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "python",
          "html",
          "css",
          "javascript",
          "typescript",
          "go",
          "jsdoc",
          "templ",
        },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            node_incremental = "v",
            node_decremental = "V",
          },
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
}
