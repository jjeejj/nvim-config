local util = require("lspconfig/util")
return {
    on_setup = function(server)
        server.setup({
            cmd = { "ast-grep", "lsp" },
            filetypes = { "dart" },
            root_dir = util.root_pattern('pibspec.yaml')
        })
    end
}