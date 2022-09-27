# nvim-config

nvim 的配置

> 该配置适用于 Mac 环境，Window 环境需要适当的修改

## 目录结构
```
.
├── LICENSE 
├── README.md               -- 仓库使用说明
├── init.lua                -- 入口初始化文件
├── lua                     -- 配置文件夹
│   ├── basic.lua           -- 基础的设置项
│   ├── colorscheme.lua
│   ├── keymappings.lua
│   ├── lsp
│   │   ├── cmp.lua
│   │   ├── config
│   │   │   ├── css.lua
│   │   │   ├── go.lua
│   │   │   ├── html.lua
│   │   │   ├── json.lua
│   │   │   └── lua.lua
│   │   ├── setup.lua
│   │   └── ui.lua
│   ├── plugin-config
│   │   ├── bufferline.lua
│   │   ├── dashboard.lua
│   │   ├── indent-blankline.lua
│   │   ├── lspsaga.lua
│   │   ├── lualine.lua
│   │   ├── mason.lua
│   │   ├── null-ls.lua
│   │   ├── nvim-tree.lua
│   │   ├── nvim-treesitter.lua
│   │   ├── project.lua
│   │   ├── telescope.lua
│   │   └── toggleterm.lua
│   └── plugins.lua
└── plugin
    └── packer_compiled.lua
```

## 详细配置说明

## 问题汇总

1. 当使用 nvim 打开 一个文件的时候，外部对该文件进行了修改，如何实时感应到？


2. Markdonw 文件如何进行预览？

3. Command 按键如何使用？
