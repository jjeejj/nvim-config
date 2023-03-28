local lspconfig = require("mason-lspconfig")

-- 加载对应的 lsp
lspconfig.setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup()
    end,
    ["lua_ls"] = function ()
        require("lsp.config.lua")()
    end,
})
