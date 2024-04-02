return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    local neo_tree = require("neo-tree")
    vim.keymap.set("n", "<leader>f", "<cmd>Neotree<CR>", { desc = "Open [f]ile tree"})
    neo_tree.setup {
      filesystem = {
        window = {
          width = 30,
          position = "float",
          mappings = {
            ["o"] = { "open", nowait= true},
            ["O"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "O" }},
            ["Oc"] = { "order_by_created", nowait = false },
            ["Od"] = { "order_by_diagnostics", nowait = false },
            ["Om"] = { "order_by_modified", nowait = false },
            ["On"] = { "order_by_name", nowait = false },
            ["Os"] = { "order_by_size", nowait = false },
            ["Ot"] = { "order_by_type", nowait = false },
            ["oc"] = "noop",
            ["od"] = "noop",
            ["og"] = "noop",
            ["om"] = "noop",
            ["on"] = "noop",
            ["os"] = "noop",
            ["ot"] = "noop",
          }
        }
      }
    }
  end,
}
