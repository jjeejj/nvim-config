local lsp_installer = require("nvim-lsp-installer")

-- 需要安装的lsp server 列表
local servers = {
    lua_ls = require("lsp.config.lua"),
    gopls = require("lsp.config.go"),
    jsonls = require("lsp.config.json"),
}

-- 自动安装 lsp server
for name, _ in pairs(servers) do
    local lsp_server_is_found, server = lsp_installer.get_server(name)
    if lsp_server_is_found then
        if not server:is_installed() then
            server:install()
        end
    end
end

-- lsp server 回调函数
lsp_installer.on_server_ready(function(server)
    local config = servers[server.name]
    if config == nil then
        return
    end
    if config.on_setup then
        config.on_setup(server)
    else
        server:setup({})
    end
end)
