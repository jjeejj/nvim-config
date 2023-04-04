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
        "html",
        "cssls",
        "emmet-ls",
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
    ["html"] = function()
        require("lsp.config.html").on_setup(lspconfig["html"])
    end,
    ["cssls"] = function()
        require("lsp.config.css").on_setup(lspconfig["cssls"])
    end,
    ["emmet-ls"] = function()
        require("lsp.config.emmet-ls").on_setup(lspconfig["emmet-ls"])
    end
})
