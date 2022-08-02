local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("dashboard-nvim not installed", vim.log.levels.WAR)
end

db.custom_footer = {
    "",
    "",
    "github.com:jjeejj/nvim-config                  ",
}


db.custom_center = {
    {
        icon = "  ",
        desc = "Projects                            ",
        action = "Telescope projects",
    },
    {
        icon = "  ",
        desc = "Recently files                      ",
        action = "Telescope oldfiles",
    },
    {
        icon = "  ",
        desc = "Edit keymappings                    ",
        action = "edit ~/.config/nvim/lua/keymappings.lua"
    },
    {
        icon = "  ",
        desc = "Edit Projects                       ",
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
    },
}

db.custom_header = {
    [[]],
    [[██╗    ██╗███████╗███╗   ██╗         ██╗██╗   ██╗███╗   ██╗]],
    [[██║    ██║██╔════╝████╗  ██║         ██║██║   ██║████╗  ██║]],
    [[██║ █╗ ██║█████╗  ██╔██╗ ██║         ██║██║   ██║██╔██╗ ██║]],
    [[██║███╗██║██╔══╝  ██║╚██╗██║    ██   ██║██║   ██║██║╚██╗██║]],
    [[╚███╔███╔╝███████╗██║ ╚████║    ╚█████╔╝╚██████╔╝██║ ╚████║]],
    [[ ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝     ╚════╝  ╚═════╝ ╚═╝  ╚═══╝]],
    [[]],
    [[]],
}
