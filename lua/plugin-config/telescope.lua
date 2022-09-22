local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("telescope.nvim not installed", vim.log.levels.WARN)
    return
end

telescope.setup({
    defaults = {
        initial_mode = "insert",
        layout_strategy = "horizontal",
        mappings = require("keymappings").telescopeList,
    },
    pickers = {
        find_files = {
            theme = "ivy",
        }
    },
    extensions = {
    }
})

-- telescope extensions
pcall(telescope.load_extension, "ui-select")
pcall(telescope.load_extension, "env")
pcall(telescope.load_extension, "project")
