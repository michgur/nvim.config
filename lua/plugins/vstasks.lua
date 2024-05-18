return {
  "~/Code/vs-tasks-vimux.nvim",
  dependecies = {
    "nvim-telescope/telescope.nvim",
    "preservim/vimux",
  },
  config = function()
    require("vstask").setup({
      cache_json_conf = false,
      terminal = "vimux",
    })
    vim.keymap.set(
      "n",
      "<leader>sx",
      require("telescope").extensions.vstask.tasks,
      { desc = "Search & e[x]ecute tasks" }
    )
    vim.keymap.set(
      "n",
      "<leader>si",
      require("telescope").extensions.vstask.inputs,
      { desc = "Search & set task inputs" }
    )
    vim.keymap.set("n", "<leader>x", function()
      vim.cmd("VimuxRunLastCommand")
      vim.cmd("VimuxZoomRunner")
    end, { desc = "E[x]ecute last task" })
  end,
}
