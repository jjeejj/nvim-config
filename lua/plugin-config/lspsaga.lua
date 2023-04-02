vim.cmd [[packadd lspsaga.nvim]]
local status, lspsaga = pcall(require, "lspsaga")
if not status then
    vim.notify("not found lspsaga")
    return
end

lspsaga.setup({
    diagaostic = {
        on_insert = true,
        on_insert_follow = true,
    },
})
