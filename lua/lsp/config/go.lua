local util = require("lspconfig/util")
return {
    on_setup = function(server)
        server:setup({
            cmd = { "gopls"},
            filetype = { "go", "gomod", "gowork", "gotmol"},
            root_dir = util.root_pattern("go.work", "go.mod", ".git"),
            single_file_support = true,
            settings = {
                gopls = {
                    analyses = {
                        unusedparams = true,
                    },
                    staticcheck = true,
                },
            },
        })
    end,
}
