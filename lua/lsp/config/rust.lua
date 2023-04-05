local status, rt = pcall(require, "rust-tools")
if not status then
    vim.notify("not found rust_tools")
    return
end

local opt = {
    on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
        require("keymappings").lspList(bufnr)
    end,
    standalone = true,
}

return {
    on_setup = function(server)
        rt.setup({
            server = vim.tbl_deep_extend("force", require("lspconfig").util.default_config, opt),
        })
    end,
}
