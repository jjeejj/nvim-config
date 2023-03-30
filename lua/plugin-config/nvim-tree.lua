-- 侧边栏配置
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("not found nvim-tree")
    return
end

-- 禁止 默认的 文件树
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 列表操作快捷键
local list_keys = require("keymappings").nvimTreeList
-- 设置配置项
nvim_tree.setup({
    disable_netrw = false,
    hijack_netrw = true,
    git = {
        enable = true,
        ignore = false,
    },
    sort_by = "case_sensitive",
    update_cwd = true,
    respect_buf_cwd = true,
    open_on_tab = true,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
        update_root = true,
    },
    filters = {
        dotfiles = false,
    },
    view = {
        width = 35,
        side = "left",
        adaptive_size = true,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = list_keys,
        },
    },
    system_open = {
        cmd = "open",
        -- cmd = "wsl-open" // npm i -g wsl-open
    },
    actions = {
        open_file = {
            quit_on_open = false,
            resize_window = true,
        },
    },
})
-- 自动关闭
--vim.cmd([[
--  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
--]])
