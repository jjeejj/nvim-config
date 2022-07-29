-- 快捷键绑定
-- 设置常用的快捷的前缀 key 为空格
vim.g.leader_map_key = " "
vim.g.leader_map_local_key = " "

-- 定义 set key map 的快捷函数
local map = vim.api.nvim_set_keymap
local opt = {noremap =  true, silent =  true}

-- 窗口管理快捷键
-- map("n")