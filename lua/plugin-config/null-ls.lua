local status, null_ls = pcall(require, "null-ls")
if not status then
    vim.notify("not found null-ls")
    return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
    debug = false,
    sources = {
        formatting.stylua,
        formatting.buf,
        formatting.cmake_format,
        formatting.gofmt,
        formatting.goimports,
        formatting.prettier.with({
            filetypes = {
                "javascript",
                "typescript",
                "css",
                "html",
                "scss",
                "less",
                "vue",
            },
            prefer_local = "node_modules/.bin",
        }),
        formatting.shfmt,
        formatting.yamlfmt,
        formatting.black,
        formatting.clang_format.with({
            filetype = {
                "c",
                "cpp",
            },
        }),
        formatting.jq,
        formatting.rustfmt,
    },
    on_attach = function(client)
        vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = true}) ]])
    end,
})
