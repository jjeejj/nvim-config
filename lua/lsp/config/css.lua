return {
    on_setup = function(server)
        server.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            -- capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
            on_attach = function(client, bufnr)
                -- 禁用格式化功能，交给专门插件插件处理
                client.server_capabilities.document_formatting = false
                client.server_capabilities.document_range_formatting = false
                require("keymappings").lspList(bufnr)
                -- 保存时自动格式化
                vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
            end,
            settings = {
                css = {
                    validte = true,
                },
                less = {
                    validte = true,
                },
                scss = {
                    validte = true,
                },
            },
            flags = {
                debounce_text_changes = 150,
            },
        })
    end,
}
