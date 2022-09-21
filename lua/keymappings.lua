-- 快捷键绑定

-- 插件需要导出的快捷键设置
local pluginKey = {}
-- 设置常用的快捷的前缀 key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 定义 set key map 的快捷函数
local map = vim.api.nvim_set_keymap
local bufmap = vim.api.nvim_buf_set_keymap
local opt = { noremap = true, silent = true }
-- 窗口管理快捷键
-- 取消原来 s 快捷键的功能
map("n", "s", "", opt)
-- 水平分割窗口
map("n", "sv", ":vsplit<CR>", opt)
-- 垂直分割窗口
map("n", "sh", ":split<CR>", opt)
-- 关闭当前窗口
map("n", "sc", "<C-w>c", opt)
-- 关闭其他窗口
map("n", "so", "<C-w>o", opt)
-- 切换窗口
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- 修改窗口大小
map("n", "<M-Left>", ":vertical resize -2<CR>", opt)
map("n", "<M-Right>", ":vertical resize +2<CR>", opt)
map("n", "<M-Up>", ":resize +2<CR>", opt)
map("n", "<M-Down>", ":resize -2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "sk", ":resize +20<CR>", opt)
map("n", "sj", ":resize -20<CR>", opt)

-- 退出
map("n", "wq", ":wq<CR>", opt)
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- insert 模式下的快捷键
-- 跳转到行首和行尾
map("i", "<C-a>", "<ESC>I", opt)
map("i", "<C-e>", "<ESC>A", opt)

-- tree 文件树左侧快捷键设置
map("n", "<M-t>", ":NvimTreeToggle<CR>", opt)
pluginKey.nvimTreeList = {
    { key = ".", action = "toggle_dotfiles" },
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
    { key = "sh", action = "split" },
    { key = "sv", action = "vsplit" },
    { key = "st", action = "tabnew" },
    -- 文件操作
    { key = "<F5>", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "<leader>", action = "system_open" },
}

-- terminal 终端快捷键设置
map("t", "li", ":LspInstallInfo<CR>", opt)
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)

-- toggleterm 终端快捷键设置
map("t", "<esc>", [[<C-\><C-n>]], opt)
map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opt)
map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opt)
map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opt)

-- Telescope 快捷键设置
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
pluginKey.telescopeList = {

}



-- lsp 快捷键
pluginKey.lspList = function(bufnr)
    bufmap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    bufmap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.cade_action()<CR>", opt)
    -- go to
    bufmap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opt)
    bufmap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    bufmap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    bufmap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementtation()<CR>", opt)
    bufmap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
    -- diagnostic
    bufmap(bufnr, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
end


-- bufferline
-- 左右切换 tab
map("n", "<M-h>",":BufferLineCyclePrev<CR>", opt)
map("n", "<M-l>",":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

return pluginKey


