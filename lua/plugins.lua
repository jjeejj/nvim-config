-- 插件管理
local packer = require("packer")
packer.startup({
    function(use)
        use "wbthomason/packer.nvim"
    end,
    config = {
        display = {
            open_fn = require("packer.util").float,
        },
        max_jobs = nil
    },
})