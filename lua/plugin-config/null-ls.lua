local status, null_ls = pcall(require, "null-ls")
if not status then
    vim.notify("not found null-ls")
    return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        formatting.stylua,
        formatting.buf,
        formatting.cmake_format,
        formatting.gofmt,
        formatting.goimposets,
        formatting.prettier.with({
            "javascript",
            "typescript",
            "css",
            "html",
        }),
        formatting.shfmt,
        formatting.yamlfmt,
        formatting.black,
        formatting.clang_format.with({
            filetype = {
                "c",
                "cpp"
            }
        }),
        formatting.jq,
    },
    -- 保存自动格式化
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})
