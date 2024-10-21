return {
    on_setup = function(server)
        server.setup({
            cmd = { "dart", "language-server", "--protocol=lsp" },
            -- cmd = { "fvm dart", "language-server", "--protocol=lsp" }, -- fvm manange flutter 
            filetypes = { "dart" },
            init_options = {
                closingLabels = true,
                flutterOutline = true,
                onlyAnalyzeProjectsWithOpenFiles = true,
                outline = true,
                suggestFromUnimportedLibraries = true,
            },
            -- root_dir = root_pattern("pubspec.yaml"),
            settings = {
                dart = {
                    completeFunctionCalls = true,
                    showTodos = true,
                },
            },
            on_attach = function(client, bufnr)
                -- 禁用格式化功能，交给专门插件插件处理
                client.server_capabilities.document_formatting = false
                client.server_capabilities.document_range_formatting = false
                require("keymappings").lspList(bufnr)
                -- 保存时自动格式化
                -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
            end,
        })
    end,
}
