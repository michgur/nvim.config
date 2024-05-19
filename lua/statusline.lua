local palette = require("catppuccin.palettes").get_palette("macchiato")
require("lualine").setup({
  options = {
    theme = "catppuccin",
    section_separators = "",
    component_separators = "",
  },
  -- extensions = { "oil" },
  sections = {
    lualine_a = {
      { "mode", separator = { left = "", right = "" } },
    },
    lualine_b = {
      { "branch", separator = { left = "", right = "" } },
      { "diff", separator = { left = "", right = "" } },
      { "diagnostics", separator = { left = "", right = "" } },
      {
        "copilot",
        symbols = {
          status = {
            icons = {
              enabled = "",
              sleep = "", -- auto-trigger disabled
              disabled = "",
              warning = "",
              unknown = "",
            },
            hl = {
              enabled = palette.green,
              sleep = palette.green,
              disabled = palette.overlay0,
              warning = palette.yellow,
              unknown = palette.overlay0,
            },
          },
        },
        show_colors = true,
        separator = { left = "", right = "" },
      },
    },
    lualine_c = {
      {
        function()
          if vim.api.nvim_buf_get_option(0, "filetype") == "oil" then
            return vim.fn.fnamemodify(require("oil").get_current_dir(), ":~")
          end
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
          if filename ~= "" then
            return filename
          end
          return "[No Name]"
        end,
        color = function()
          if vim.api.nvim_buf_get_option(0, "modified") then
            return { gui = "italic" }
          end
          return { gui = "bold" }
        end,
      },
    },
    lualine_x = {
      "encoding",
      "filetype",
    },
    lualine_y = {
      { "progress", separator = { left = "", right = "" } },
    },
    lualine_z = {
      { "location", separator = { left = "", right = "" } },
    },
  },
})
