return {
  "SmiteshP/nvim-navic",
  dependencies = {
    "SmiteshP/nvim-navbuddy",
    "MunifTanjim/nui.nvim",
    "b0o/incline.nvim",
  },
  -- TODO: better jump plugin - ',' doesn't work which is annoying
  -- TODO: better autopair plugin - it constantly malfunctions, for example "abc| - will add 2 double quotes
  config = function()
    require("navic")
  end,
}
