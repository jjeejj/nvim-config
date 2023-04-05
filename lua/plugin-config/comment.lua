local status, comment = pcall(require, "Comment")
if not status then
    vim.notify("not found comment")
    return
end

comment.setup({
    ignore = "^$",
    -- Normal
    toggler = {
        line = "<leader>cc",
        block = "<leader>bc",
    },
    -- Visual
    opleader = {
        line = "<leader>c",
        block = "<leader>b",
    },
})
