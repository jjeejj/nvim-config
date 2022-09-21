-- 侧边栏配置
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("not found nvim-tree")
    return
end

-- 列表操作快捷键
local list_keys = require('keymappings').nvimTreeList
-- 设置配置项
nvim_tree.setup({
    git = {
        enable = false,
    },
    sort_by = "case_sensitive",
    update_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
    },
    filters = {
        dotfiles = false,
    },
    view = {
        width = 30,
        side = "left",
        adaptive_size = true,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = list_keys,
        }
    },
    system_open = {
        cmd = "open"
    }
})
-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
