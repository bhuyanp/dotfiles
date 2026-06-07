local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

enable_transparency()

return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "catppuccin",
		},
	},
}
