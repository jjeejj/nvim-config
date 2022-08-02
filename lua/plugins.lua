-- 插件管理
local packer = require("packer")
packer.startup({
    function(use)
        use("wbthomason/packer.nvim")
        -- dashboard vim 启动页配置
        use("glepnir/dashboard-nvim")
        -- lsp config
        use("neovim/nvim-lspconfig")
        -- lsp installer
        use("williamboman/nvim-lsp-installer")
        -- use("williamboman/mason-lspconfig.nvim")
        -- use("williamboman/mason.nvim")
        -- colorscheme
        use("folke/tokyonight.nvim")
        -- folder tree
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline
        -- using packer.nvim
        use({ 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' })
        -- treesitter
        -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        -- project.nvim
        -- https://github.com/ahmedkhalf/project.nvim
        use("ahmedkhalf/project.nvim")
    end,
    config = {
        display = {
            open_fn = require("packer.util").float,
        },
        max_jobs = nil
    },
})
