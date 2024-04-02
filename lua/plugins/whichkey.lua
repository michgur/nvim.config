return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 50
  end,
  opts = {},
  config = function()
    local which_key = require("which-key")
    which_key.register({
      ["<leader>c"] = { name = "[c]ode", _ = "which_key_ignore" },
      ["<leader>d"] = { name = "[d]ebug", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[r]efactor", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[s]earch", _ = "which_key_ignore" },
      ["<leader>g"] = { name = "[g]earch", _ = "which_key_ignore" },
    })
  end,
}
