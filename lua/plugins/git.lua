return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",      -- required
      "sindrets/diffview.nvim",     -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true,
    keys = {
      {
        "<leader>g",
        mode = { "n" },
        function()
          require("neogit").open()
        end,
        desc = "[g]it",
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame = true,
      })
    end,
  },
  -- {
  --   "f-person/git-blame.nvim",
  -- },
  -- {
  --   "tpope/vim-fugitive",
  -- },
  -- {
  --   "kdheepak/lazygit.nvim",
  --   cmd = {
  --     "LazyGit",
  --     "LazyGitConfig",
  --     "LazyGitCurrentFile",
  --     "LazyGitFilter",
  --     "LazyGitFilterCurrentFile",
  --   },
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   keys = {
  --     { "<leader>gl", "<cmd>LazyGit<cr>", desc = "[l]azygit" },
  --   },
  -- },
}
