return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to [D]eclaration" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to [d]efinition" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Re[n]ame symbol" })
      vim.keymap.set("n", "cd", vim.lsp.buf.rename, { desc = "Change [d]efinition (i.e. rename symbol)" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code [a]ctions" })
    end,
  },
}
