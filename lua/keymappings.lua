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
map("n", "<M-Up>", ":resize -2<CR>", opt)
map("n", "<M-Down>", ":resize +2<CR>", opt)
map("n", "s,", ":vertical res+ze -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "sk", ":resize +20<CR>", opt)
map("n", "sj", ":resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
-- 退出
map("n", "wq", ":wq<CR>", opt)
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- insert mormal 模式下的快捷键
-- 跳转到行首和行尾
map("i", "<C-a>", "<ESC>I", opt)
map("i", "<C-e>", "<ESC>A", opt)
map("i", "<C-s>", "<Cmd>:w<CR>", opt)
map("n", "<C-a>", "<ESC>I", opt)
map("n", "<C-e>", "<ESC>A", opt)

-- tree 文件树左侧快捷键设置
map("n", "<M-t>", ":NvimTreeToggle<CR>", opt)
pluginKey.nvimTreeList = {
    { key = ".",                              action = "toggle_dotfiles" },
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
    { key = "h",                              action = "split" },
    { key = "v",                              action = "vsplit" },
    { key = "t",                              action = "tabnew" },
    -- 文件操作
    { key = "<F5>",                           action = "refresh" },
    { key = "a",                              action = "create" },
    { key = "d",                              action = "remove" },
    { key = "r",                              action = "rename" },
    { key = "x",                              action = "cut" },
    { key = "c",                              action = "copy" },
    { key = "p",                              action = "paste" },
    { key = "<leader>",                       action = "system_open" },
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

-- visual 模式下的快捷键
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Telescope 快捷键设置
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
map("n", "<C-;>", ":Telescope project<CR>", opt)
pluginKey.telescopeList = {
    i = {
        ["<Esc>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
        ["<C-h>"] = "which_key",
    },
}

-- lsp 快捷键
pluginKey.lspList = function(bufnr)
    bufmap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    -- bufmap(bufnr, "n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
    bufmap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.cade_action()<CR>", opt)
    -- bufmap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga cade_action<CR>", opt)
    -- go to
    bufmap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opt)
    bufmap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    bufmap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    --bufmap(bufnr, "n", "gh", "<cmd>Lspsaga hover_doc<CR>", opt)
    bufmap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementtation()<CR>", opt)
    bufmap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
    -- bufmap(bufnr, "n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
    -- diagnostic
    bufmap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
    -- bufmap(bufnr, "n", "go", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
    bufmap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
    -- bufmap(bufnr, "n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)
    bufmap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
    -- bufmap(bufnr, "n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
    bufmap(bufnr, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
end

-- bufferline
-- 左右切换 tab
map("n", "<M-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<M-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<M-c>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- treesitter
map("n", "zz", ":foldclose<CR>", opt)
map("n", "Z", ":foldopen<CR>", opt)

-- cmp 代码补全
pluginKey.cmp = function(cmp)
    local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    end

    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    return {
        ["<M-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ["<M-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<Down>"] = cmp.mapping.select_prev_item(),
        ["<Up>"] = cmp.mapping.select_next_item(),
        -- 上一个 在一个
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        -- 确定
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        -- Super Tab
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --    if cmp.visible() then
        --        cmp.select_next_item()
        --    elseif vim.fn["vsnip#available"](1) == 1 then
        --        feedkey("<Plug>(vsnip-expand-or-jump)", "")
        --    elseif has_words_before() then
        --        cmp.complete()
        --    else
        --        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        --   end
        -- end, { "i", "s" }),
        -- ["<S-Tab>"] = cmp.mapping(function()
        --    if cmp.visible() then
        --        cmp.select_prev_item()
        --    elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        --        feedkey("<Plug>(vsnip-jump-prev)", "")
        --    end
        -- end, { "i", "s" }),
    }
end

return pluginKey
