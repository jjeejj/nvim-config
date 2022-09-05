local status, toggleterm = pcall(require, "toggleterm")
if not status then
    vim.notify("toggleterm.nvim not installed", vim.log.levels.WARN)
    return
end

toggleterm.setup({
    size = function(term)
        if term.direction == 'horizontal' then
            return 20
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    insert_mappings = true,
})
