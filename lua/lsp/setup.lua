local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
    vim.notify("not found mason lspconfig")
    return
end

local lsp_status, lspconfig = pcall(require, "lspconfig")
if not lsp_status then
    vim.notify("not found lspconfig")
    return
end

-- 自动安装 指定的 lsp server
mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "html",
        "cssls",
        "emmet_ls",
        "jsonls",
        "gopls",
        "yamlls",
        "tsserver",
        "bashls",
    },
})
-- 加载对应的 lsp 的配置
mason_lspconfig.setup_handlers({
    function(server_name)
        -- lspconfig[server_name].setup()
    end,
    ["lua_ls"] = function()
        require("lsp.config.lua").on_setup(lspconfig["lua_ls"])
    end,
    ["rust_analyzer"] = function()
        require("lsp.config.rust").on_setup(lspconfig["rust_analyzer"])
    end,
    ["html"] = function()
        require("lsp.config.html").on_setup(lspconfig["html"])
    end,
    ["cssls"] = function()
        require("lsp.config.css").on_setup(lspconfig["cssls"])
    end,
    ["emmet_ls"] = function()
        require("lsp.config.emmet_ls").on_setup(lspconfig["emmet_ls"])
    end,
    ["jsonls"] = function()
        require("lsp.config.json").on_setup(lspconfig["jsonls"])
    end,
    ["gopls"] = function()
        require("lsp.config.go").on_setup(lspconfig["gopls"])
    end,
    ["yamlls"] = function()
        require("lsp.config.yaml").on_setup(lspconfig["yamlls"])
    end,
    ["tsserver"] = function()
        require("lsp.config.ts").on_setup(lspconfig["tsserver"])
    end,
    ["bashls"] = function()
        require("lsp.config.sh").on_setup(lspconfig["bashls"])
    end,
})

-- mason not suooport lsp
-- use lspconfig
require("lsp.config.dart").on_setup(lspconfig["dartls"])
