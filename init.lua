require("basic")

-- 快捷键映射
require("keymappings")

require("colorscheme")

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
require("plugin-config.indent-blankline")
-- require("plugin-config.null-ls")
require("plugin-config.lsp-signature")
require("plugin-config.mason")
require("plugin-config.git-signs")
require("plugin-config.lspsaga")
-- 主体设置

-- LSP
require("lsp.setup")
-- cmp
require("lsp.cmp")
require("lsp.ui")
