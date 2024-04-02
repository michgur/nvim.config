return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<D-F>", builtin.find_files, {})
			vim.keymap.set("n", "<D-f>", builtin.live_grep, {})

			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search [h]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Search [k]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search [f]iles" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Search current [w]ord" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search by [g]rep" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader>st", builtin.treesitter, { desc = "Search current file ([t]reesitter)" })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "Search [n]eovim files" })

			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					["project"] = {
						on_project_selected = function(prompt_bufnr)
							require("telescope._extensions.project.actions").change_working_directory(
								prompt_bufnr,
								false
							)
							vim.cmd(":Neotree")
						end,
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
			vim.keymap.set("n", "<leader>sp", function()
				require("telescope").extensions.project.project({ display = "full" })
			end, { desc = "Search [p]rojects" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
