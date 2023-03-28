local status , mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
    vim.notify("not found mason lspconfig")
    return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
    vim.notify("not found lspconfig")
    return
end


-- 加载对应的 lsp
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup()
    end,
    ["lua_ls"] = function ()
        require("lsp.config.lua").on_setup(lspconfig["lua_ls"])
    end,
})
