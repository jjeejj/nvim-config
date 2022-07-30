-- 快捷键绑定

-- 插件需要导出的快捷键设置
local pluginKey = {}
-- 设置常用的快捷的前缀 key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 定义 set key map 的快捷函数
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 窗口管理快捷键
-- 取消原来 s 快捷键的功能
map("n", "s", "", opt)
-- 水平分割窗口
map("n", "sv", ":vsplit<CR>", opt)
-- 垂直分割窗口
map("n", "sh", ":split<CR>", opt)
-- 关闭当前窗口
map("n", "sc", "<C-w>c", opt)
-- 关闭其他窗口
map("n", "so", "<C-w>o", opt)
-- 切换窗口
map("n", "<M-j>", "<C-w>j", opt)
map("n", "<M-k>", "<C-w>k", opt)
map("n", "<M-h>", "<C-w>h", opt)
map("n", "<M-l>", "<C-w>l", opt)



-- 退出
map("n", "wq", ":wq<CR>", opt)
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- insert 模式下的快捷键
-- 跳转到行首和行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- tree 文件树左侧快捷键设置
map("n", "<M-t>", ":NvimTreeToggle<CR>", opt)
pluginKey.nvimTreeList = {

}

-- terminal 终端快捷键设置
map("t", "li", ":LspInstallInfo<CR>", opt)


return pluginKey
