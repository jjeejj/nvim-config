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

1. 在 用户的  `.config`  目录下创建 `nvim` 目录 拉下来代码

> 或者直接 拉下来代码自动创建目录 git clone git@github.com:jjeejj/nvim-config.git nvim

2. 使用  [packer](https://github.com/wbthomason/packer.nvim) 来管理的插件，先进行安装

`git clone --depth 1 <https://github.com/wbthomason/packer.nvim>\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

3. 进入 `neovim` 执行 :PackerSync 安装插件

4. 设置字体图标

[nerdfonts](https://www.nerdfonts.com/font-downloads) 从这个网站上下载对应的字体，然后进行配置

5. 基础配置 lua/basic.lua



## 问题汇总

1. 当使用 nvim 打开 一个文件的时候，外部对该文件进行了修改，如何实时感应到？

2. Markdown 文件如何进行预览？

3. Command 按键如何使用？

4. Go 程序如何自动导出使用的 package ?

5. 自动补全的时候，如何选择下面建议的全部代码，而不只是输入的建议 (enter 没有起作用)？

6. 执行 :PackerSync 更新 Plugin 的时候 报错 Your nvim does not has `nvim_create_autocmd` function. Please update to latest nvim

答： neovim 版本过低 , 升级即可 [Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

7. 使用 TabNine 插件后，每次启动 提示 not executable

答：尝试尝试后重新 下载安装

8. `sumneko_lua is deprecated, use lua_ls instead This function will be removed in lspconfig version 0.2.0`

答：更新 sumneko_lua 为 [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lua_ls)

9. 插件去哪里查询?

* [github awesome-neovim](https://github.com/rockerBOO/awesome-neovim)
* [neovimcraft   插件网站](https://neovimcraft.com)
