-- 侧边栏配置
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("not found nvim-tree")
    return
end

-- 设置配置项
nvim_tree.setup({
    sort_by = "case_sensitive",
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {}
    },
    view = {
        width = 30,
        side = "left",
        adaptive_size = true,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = {

            }
        }
    },
    system_open = {
        cmd = "open"
    }
})
