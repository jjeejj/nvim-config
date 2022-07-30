-- 插件管理
local packer = require("packer")
packer.startup({
    function(use)
        use("wbthomason/packer.nvim")
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
    end,
    config = {
        display = {
            open_fn = require("packer.util").float,
        },
        max_jobs = nil
    },
})
