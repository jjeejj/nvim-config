local util = require("lspconfig/util")
return {
    on_setup = function(server)
        server.setup({
            cmd = { "gopls" },
            filetypes = { "go", "gomod", "gowork", "gotmol" },
            root_dir = util.root_pattern("go.work", "go.mod", ".git"),
            single_file_support = true,
            settings = {
                gopls = {
                    analyses = {
                        unusedparams = true,
                    },
                    staticcheck = true,
                    -- buildFlags = { "-tags=wireinject" },
                    --env = { GOFLAGS = "tags=wireinject" },
                    -- ui.completion.usePlaceholders = true,
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
