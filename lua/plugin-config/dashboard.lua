local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("dashboard-nvim not installed", vim.log.levels.WAR)
end

db.custom_footer = {

}
