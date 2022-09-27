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
        -- colorscheme tokyonight
        use("folke/tokyonight.nvim")
        use("RRethy/nvim-base16")
        -- nord
        use("shaunsingh/nord.nvim")
        -- onedark
        use("ful1e5/onedark.nvim")
        -- nightfox
        use("EdenEast/nightfox.nvim")
        -- folder tree
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline
        -- using packer.nvim
        use({ 'akinsho/bufferline.nvim', tag = "v2.*", requires = { 'kyazdani42/nvim-web-devicons', "moll/vim-bbye" }})
        -- treesitter
        -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        -- project.nvim
        -- https://github.com/ahmedkhalf/project.nvim
        use("ahmedkhalf/project.nvim")
        -- telescope.nvim
        -- https://github.com/nvim-telescope/telescope.nvim
        use({ "nvim-telescope/telescope.nvim", requires = 'nvim-lua/plenary.nvim' })

        -- telescope-env.nvim"
        -- https://github.com/LinArcX/telescope-env.nvim
        use("LinArcX/telescope-env.nvim")
        -- telescope-project.nvim
        -- https://github.com/nvim-telescope/telescope-project.nvim
        use("nvim-telescope/telescope-project.nvim")
        -- toggleterm.vim
        -- https://github.com/akinsho/toggleterm.nvim
        use({ 'akinsho/toggleterm.nvim', tag = 'v2.*' })

        -- nvim-cmp
        -- https://github.com/hrsh7th/nvim-cmp
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-nvim-lsp") -- name = nvim_lsp
        use("hrsh7th/cmp-buffer") -- name = buffer
        use("hrsh7th/cmp-path") -- name = path
        use("hrsh7th/cmp-cmdline") -- name = cmdline
        use("hrsh7th/cmp-vsnip") -- 
        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- lualine.nvim
        -- https://github.com/nvim-lualine/lualine.nvim
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true, "moll/vim-bbye" }})
        use("arkav/lualine-lsp-progress")
        -- json 增强
        use("b0o/schemastore.nvim")
        -- ui 图标
        use("onsails/lspkind-nvim")
        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        use("lukas-reineke/indent-blankline.nvim")
        -- lspsaga
        -- https://github.com/glepnir/lspsaga.nvim
        use({ "glepnir/lspsaga.nvim" , branch = "main" })
        -- null-ls.nvim
        -- https://github.com/jose-elias-alvarez/null-ls.nvim
        use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" }})
    end,
    config = {
        display = {
            open_fn = require("packer.util").float,
        },
        max_jobs = nil
    },
})
