-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   background = 'light',
--   config = function()
--     vim.cmd.colorscheme 'gruvbox'
--   end,
-- }
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- vim.cmd.colorscheme 'catppuccin-frappe'
		vim.cmd.colorscheme 'catppuccin-latte'
	end,
}
