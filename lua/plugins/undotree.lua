return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		require("undotree").setup()
		vim.keymap.set(
			"n",
			"<leader>u",
			require("undotree").toggle,
			{ desc = "Toggle [u]ndotree", noremap = true, silent = true }
		)
	end,
}
