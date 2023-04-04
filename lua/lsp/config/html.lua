return {
    on_setup = function(server)
        server.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            -- capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
            flags = {
                debounce_text_changes = 150,
            },
            on_attach = function(client, bufnr)
                -- 禁用格式化功能，交给专门插件插件处理
                client.server_capabilities.document_formatting = false
                client.server_capabilities.document_range_formatting = false
                require("keymappings").lspList(bufnr)
            end,
        })
    end,
}
