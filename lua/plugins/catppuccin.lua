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
        },
      },
      highlight_overrides = {
        all = function(colors)
          return {
            TelescopeMatching = { fg = colors.pink },
            TelescopeSelectionCaret = { fg = colors.pink },
            TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
            TelescopePromptPrefix = { bg = colors.mantle, fg = colors.pink },
            TelescopePromptNormal = { bg = colors.mantle },
            TelescopePromptBorder = { bg = colors.mantle, fg = colors.mantle },
            TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
            TelescopePreviewNormal = { bg = colors.crust },
            TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
            TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
            TelescopeResultsNormal = { bg = colors.mantle },
            TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
            TelescopeResultsTitle = { fg = colors.mantle },

            NavicNormal = { bg = colors.crust },
            NavbuddyNormalFloat = { fg = colors.text, bg = colors.mantle },
            CmpNormal = { fg = colors.text, bg = colors.mantle },
          }
        end,
      },
    })
  end,
}
