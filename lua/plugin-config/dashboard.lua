local status, dashboard = pcall(require, "dashboard")
if not status then
	vim.notify("dashboard-nvim not installed", vim.log.levels.WAR)
	return
end

dashboard.setup({
	theme = "doom",
    config = {
        packages = {
            enable = true
        },
        header = {
		    [[]],
            [[]],
            [[]],
		    [[██╗    ██╗███████╗███╗   ██╗         ██╗██╗   ██╗███╗   ██╗]],
		    [[██║    ██║██╔════╝████╗  ██║         ██║██║   ██║████╗  ██║]],
		    [[██║ █╗ ██║█████╗  ██╔██╗ ██║         ██║██║   ██║██╔██╗ ██║]],
		    [[██║███╗██║██╔══╝  ██║╚██╗██║    ██   ██║██║   ██║██║╚██╗██║]],
		    [[╚███╔███╔╝███████╗██║ ╚████║    ╚█████╔╝╚██████╔╝██║ ╚████║]],
		    [[ ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝     ╚════╝  ╚═════╝ ╚═╝  ╚═══╝]],
		    [[]],
		    [[]],
	    },
	    footer = {
		    "github.com:jjeejj/nvim-config                  ",
	    },
	    center = {
		    {
			    icon = "       ",
			    desc = "Projects                            ",
			    action = "Telescope projects",
		    },
		    {
			    icon = "       ",
			    desc = "Recently files                      ",
			    action = "Telescope oldfiles",
		    },
		    {
			    icon = "       ",
			    desc = "Edit keymappings                    ",
			    action = "edit ~/.config/nvim/lua/keymappings.lua",
		    },
		    {
			    icon = "       ",
			    desc = "Edit Projects                       ",
			    action = "edit ~/.local/share/nvim/project_nvim/project_history",
		    },
            {
                icon = "       ",
                desc = "Change Theme                        ",    
                action = "Telescope colorscheme             ",    
            },
        },   
	},
})
