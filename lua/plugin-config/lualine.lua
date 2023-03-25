local status, lualine = pcall(require, "lualine")
if not status then
	vim.notify("not found lualine")
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "nord",
		component_separators = { left = "|", right = "|" },
	},
	sections = {
		lualine_c = {
			"filename",
			{
				"lsp_progress",
				spinner_symbols = { "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
			},
		},
		lualine_x = {
			"filesize",
			"encoding",
			{
				"fileformat",
				symbols = {
					unix = "", -- e712{
					dos = "", -- e70f
					mac = "", -- e711
				},
			},
			"filetype",
		},
	},
})
