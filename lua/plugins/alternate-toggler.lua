return {
  "rmagatti/alternate-toggler",
  config = function()
    local toggler = require("alternate-toggler")
    toggler.setup({
      alternates = {
        const = "var",
      },
    })

    vim.keymap.set("n", "<leader>rb", toggler.toggleAlternate, { desc = "Toggle [b]ooleans" })
  end,
  event = { "BufReadPost" },
}
