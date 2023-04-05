local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
    vim.notify("not found autopairs")
    return
end

autopairs.setup({})
