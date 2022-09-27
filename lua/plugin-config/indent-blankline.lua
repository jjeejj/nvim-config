local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
    vim.notify("not found indent_blankline")
end

indent_blankline.setup({
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    char = "|",
    use_treesitter = true,
    show_end_of_line = true,
})

