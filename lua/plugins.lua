-- 插件管理
local packer = require("packer")
packer.startup({
    function(use)
        use("wbthomason/packer.nvim")
        -- dashboard vim 启动页配置
        use({ "glepnir/dashboard-nvim", requires = { "nvim-tree/nvim-web-devicons" } })
        -- lsp config
        use("neovim/nvim-lspconfig")
        -- lsp installer
        -- use("williamboman/nvim-lsp-installer")
        use({ "williamboman/mason.nvim", run = ":MasonUpdate" })
        use("williamboman/mason-lspconfig.nvim")
        -- kosayoda/nvim-lightbulb
        -- https://github.com/kosayoda/nvim-lightbulb
        use("kosayoda/nvim-lightbulb")
        -- ray-x/lsp_signature.nvim
        -- https://github.com/ray-x/lsp_signature.nvim
        use("ray-x/lsp_signature.nvim")
        -- colorscheme tokyonight
        use("folke/tokyonight.nvim")
        -- use("RRethy/nvim-base16")
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
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        -- treesitter
        -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        -- project.nvim
        -- https://github.com/ahmedkhalf/project.nvim
        use("ahmedkhalf/project.nvim")
        -- telescope.nvim
        -- https://github.com/nvim-telescope/telescope.nvim
        use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" })
        -- fzf sort
        -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
        use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
        -- telescope-env.nvim"
        -- https://github.com/LinArcX/telescope-env.nvim
        use("LinArcX/telescope-env.nvim")
        -- telescope-project.nvim
        -- https://github.com/nvim-telescope/telescope-project.nvim
        use("nvim-telescope/telescope-project.nvim")
        -- telescope-media-files.nvim
        -- https://github.com/nvim-telescope/telescope-media-files.nvim
        use({ "nvim-telescope/telescope-media-files.nvim", requires = { "nvim-lua/popup.nvim" } })
        -- toggleterm.vim
        -- https://github.com/akinsho/toggleterm.nvim
        use({ "akinsho/toggleterm.nvim", tag = "v2.*" })

        -- nvim-cmp
        -- https://github.com/hrsh7th/nvim-cmp
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-nvim-lsp")          -- name = nvim_lsp
        use("hrsh7th/cmp-buffer")            -- name = buffer
        use("hrsh7th/cmp-path")              -- name = path
        use("hrsh7th/cmp-cmdline")           -- name = cmdline
        use("hrsh7th/cmp-vsnip")             -- 代码片段提示
        use("f3fora/cmp-spell")              -- 单词拼写
        use("hrsh7th/cmp-nvim-lsp-signature-help") -- 函数签名
        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        use({
            "tzachar/cmp-tabnine",
            run = "./install.sh",
            requires = "hrsh7th/nvim-cmp",
            -- commit = "8c4512d148693ecb412ef9be4df9fb4619d033df",
        }) -- ai 代码补全
        -- lualine.nvim
        -- https://github.com/nvim-lualine/lualine.nvim
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
        use("arkav/lualine-lsp-progress")
        -- ui 图标
        use("onsails/lspkind-nvim")
        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        use("lukas-reineke/indent-blankline.nvim")
        -- lspsaga
        -- https://github.com/glepnir/lspsaga.nvim
        use({
            "glepnir/lspsaga.nvim",
            -- opt = true,
            branch = "main",
            event = "LspAttach",
            requires = {
                { "nvim-tree/nvim-web-devicons" },
                --        --Please make sure you install markdown and markdown_inline parser
                { "nvim-treesitter/nvim-treesitter" },
            },
        })
        -- null-ls.nvim
        -- https://github.com/jose-elias-alvarez/null-ls.nvim
        use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
        -- git blame
        -- https://github.com/f-person/git-blame.nvim
        -- use("f-person/git-blame.nvim")
        --  gitsigns.nvim
        -- https://github.com/lewis6991/gitsigns.nvim
        use("lewis6991/gitsigns.nvim")
        -- rust language lsp
        use("simrat39/rust-tools.nvim")
        -- schemastore.nvim json 增强
        -- https://github.com/b0o/schemastore.nvim
        use("b0o/schemastore.nvim")
        -- dap 调试
        use("mfussenegger/nvim-dap")
        use("theHamsta/nvim-dap-virtual-text")
        use("rcarriga/nvim-dap-ui")
        -- comment.vim
        -- https://github.com/numToStr/Comment.nvim
        use("numToStr/Comment.nvim")
    end,
    config = {
        display = {
            open_fn = require("packer.util").float,
        },
        max_jobs = nil,
    },
})

-- 当该文件变化时，自动进行编译
vim.cmd([[	
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])
