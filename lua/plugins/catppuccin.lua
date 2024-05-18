return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      integrations = {
        navic = {
          enabled = true,
        },
        telescope = {
          enabled = true,
          style = "nvchad",
        },
      },
      highlight_overrides = {
        macchiato = function(colors)
          return {
            TelescopeMatching = { fg = colors.pink },
            TelescopeSelectionCaret = { fg = colors.pink },
            TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
            TelescopePromptPrefix = { bg = colors.base, fg = colors.pink },
            TelescopePromptNormal = { bg = colors.base },
            TelescopePromptBorder = { bg = colors.base, fg = colors.base },
            TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
            TelescopePreviewNormal = { bg = colors.mantle },
            TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
            TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
            TelescopeResultsNormal = { bg = colors.base },
            TelescopeResultsBorder = { bg = colors.base, fg = colors.base },
            TelescopeResultsTitle = { fg = colors.base },

            NavbuddyNormalFloat = { fg = colors.text, bg = colors.base },
            CmpNormal = { fg = colors.text, bg = colors.base },
          }
        end,
      },
    })
    vim.cmd.colorscheme("catppuccin-macchiato")
  end,
}
