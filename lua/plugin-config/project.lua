local status, project = pcall(require, "project_nvim")
if not status then
    vim.notify("project.nvim not installed", vim.log.levels.WARN)
    return
end

project.setup({
    manual_mode = false,
    detection_methods = { "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "go.mod" },
})

local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("telescope.nvim not installed", vim.log.levels.WARN)
    return
end

pcall(telescope.load_extension, "projects")
