return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    "windwp/nvim-ts-autotag"
  },

	--treesitter
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			highlight = { enable = true },
			indent = { enable = true },
      autotag = { enable = true },

			--auto_install = true,
			ensure_installed = {
        "html",
        "css",
        "javascript",
        "json",
        "lua",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
          scope_incremental = false,
        }
      }
		})
	end,
}
