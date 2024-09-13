return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.cursorword").setup({})
    require("mini.ai").setup({
      n_lines = 500,
    })
    -- require("mini.jump").setup({
    -- 	delay = {
    -- 		idle_stop = 0,
    -- 	},
    -- })
    require("mini.move").setup({})
    -- require("mini.pairs").setup({})
    local MiniSplitjoin = require("mini.splitjoin")
    MiniSplitjoin.setup({
      mappings = {
        toggle = "",
        split = "",
        join = "",
      },
    })
    vim.keymap.set("n", "<leader>rs", MiniSplitjoin.toggle, { desc = "Toggle [s]plit argument list" })
  end,
}
