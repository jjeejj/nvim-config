local status, bufferline = pcall(require, "bufferline")
if not status then
	vim.notify("not found bufferline")
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
				separator = true,
			},
		},
		color_icons = true,
		---@diagnostic disable-next-line: unused-local
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
	},
})
