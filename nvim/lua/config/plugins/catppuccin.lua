return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	--colorscheme
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
