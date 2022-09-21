require("basic")
-- Packer 插件插件管理

require("plugins")
-- 插件的配置
require("plugin-config.nvim-tree")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.telescope")
require("plugin-config.toggleterm")
require("plugin-config.nvim-treesitter")
require("plugin-config.lualine")
require("plugin-config.bufferline")
-- 快捷键映射
require("keymappings")
-- 主体设置
require("colorscheme")

-- LSP
require("lsp.setup")
-- cmp
require("lsp.cmp")
