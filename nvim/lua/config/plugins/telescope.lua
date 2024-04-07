return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		--telescope
		config = function()
			local builtin = require("telescope.builtin")
      local telescope = require("telescope")
      local actions = require("telescope.actions")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files in current working dir" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find string in current working dir" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "List open buffer" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
			vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

      telescope.setup({
        defaults = {
          path_display = { "smart" },  --smart,truncate,shorten,tail
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, --send to quick fix list and open quick fix list
            },
          },
        },
      })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
