-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
table.insert(runtime_path, "/opt/homebrew/share/luajit-2.1.0-beta3/jit/?.lua")

return {
    on_setup = function(server)
        server.setup({
            single_file_support = true,
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                        path = runtime_path,
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = {
                            "vim",
                        },
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier
                    telemetry = {
                        enable = false,
                    },
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
