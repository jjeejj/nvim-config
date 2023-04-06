-- utf-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- 展示行号
vim.o.number = true
vim.wo.number = true
vim.wo.relativenumber = false

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 高亮所在行
vim.wo.cursorline = true

-- 显示 tabline
vim.o.showtabline = 2

-- 关闭底部默认状态显示
vim.o.showmode = false

-- 留出一列给图标显示
vim.wo.signcolumn = "yes"

-- 右侧行长度参考线
vim.wo.colorcolumn = "120"
--  开启真彩色
vim.g.termguicolors = true

-- tab 4 个空格
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.shiftround = true

-- 空格代替 tab
vim.o.expandtab = true
vim.bo.expandtab = true

--  新行对其当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 查询搜索大小写不敏感
vim.o.ignorecase = true
vim.o.smartcase = true

--  边输入边搜索
vim.o.incsearch = true

-- 当文件被外部修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 鼠标支持
vim.o.mouse = "a"

-- 不可见字符的显示，这里只把空格显示为一个点
vim.g.list = false
-- vim.o.listchars = "space:·"
vim.g.nolist = true

--   允许隐藏被修改的 buffer
vim.o.hidden = true

vim.o.completeopt = "menu,menuone,noselect,noinsert"

-- 连续按键超时时间
vim.o.timeoutlen = 500

-- clipboard
vim.o.clipboard ="unnamedplus"
