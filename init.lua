-- set options
vim.o.number = true
-- Packer 插件插件管理
require("plugins")
-- 插件的配置
require("plugin-config.nvim-tree")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.telescope")
-- 快捷键映射
require("keymappings")
-- 主体设置
require("colorscheme")
