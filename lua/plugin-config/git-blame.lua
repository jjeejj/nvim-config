-- not use
local status, gitblame = pcall(require, "gitblam")
if not status then
    vim.notify("not found git blame")
    return
end

gitblame.setup()
