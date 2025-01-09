-- return {
-- 	"chriskempson/base16-vim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("base16-tomorrow-night")
-- 	end,
-- }

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
