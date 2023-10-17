local config = function()
	local theme = 'onedark'

	require('lualine').setup {
		options = {
			theme = theme,
			globalstatus = true,
		},
		sections = {
			lualine_a = {
				{
					'buffers',
				}
			},
		}
	}
end

return {
	'nvim-lualine/lualine.nvim',
	lazy = false,
	config = config,
}
