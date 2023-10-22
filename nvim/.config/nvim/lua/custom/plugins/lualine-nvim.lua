local config = function() -- local theme = 'onedark'
	-- local theme = 'gruvbox_light'
	local theme = 'onelight'

	require('lualine').setup {
		options = {
			theme = theme,
			globalstatus = true,
			component_separators = { left = '', right = ''},
			section_separators = { left = '', right = ''},
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
