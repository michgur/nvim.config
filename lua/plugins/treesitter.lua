return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
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
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
