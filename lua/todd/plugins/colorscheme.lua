return {
	"chriskempson/base16-vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("base16-tomorrow-night")
	end,
}
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("kanagawa-dragon")
-- 	end,
-- }
