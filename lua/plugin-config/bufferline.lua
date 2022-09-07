local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("not found bufferline")
    return
end

bufferline.setup({
    options = {
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        diagnostics = "nvim_lsp",
        offset = {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
            separator = true,
        },
    },
})

