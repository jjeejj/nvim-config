local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("not found lualine")
    return
end

lualine.setup({
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "|", right = "|"},
    },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
            },
        },
    },
})
