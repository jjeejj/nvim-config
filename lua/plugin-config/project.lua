local status, project = pcall(require, "project_nvim")
if not status then
    vim.notify("project.nvim not installed", vim.log.levels.WARN)
    return
end

-- nvim-tree 支持
vim.g.nvim_tree_respect_buf_cwd = 1

project.setup({
    manual_mode = false,
    detection_methods = { "lsp", "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "go.mod" },
    datapath = vim.fn.stdpath("data"),
})

