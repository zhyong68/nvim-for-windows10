# 移植到Windows10 使用

首先安装好neovim，https://github.com/neovim/neovim/releases ，解压后添加到环境变量。

> 添加到右键菜单：https://jingyan.baidu.com/article/08b6a591f334f914a809223b.html

安装Git：https://git-scm.com/download/win
安装nodejs:https://nodejs.org/zh-cn/

Neovim 使用了和 Vim 不同的配置文件名称以及配置文件存放位置，根据 Neovim 官方文档，Neovim 的配置文件应该命名为 init.vim，并且应该放在 `~/AppData/Local/nvim` 目录下

## 安装教程

使用Git bash打开：
```
git clone https://github.com/fgheng/vime -C ~/AppData/Local/nvim
```
然后打开neovim，执行:PlugInstall等待插件安装完毕即可！

部分插件不可使用，如：`p00f/nvim-ts-rainbow`,`Plug 'neoclide/coc.nvim', { 'branch': 'release' }`和下面所有。

```
if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'romgrk/nvim-treesitter-context'
else
    Plug 'sheerun/vim-polyglot'
    Plug 'octol/vim-cpp-enhanced-highlight'
endif
```
插件配置在`~\AppData\Local\nvim\config\plugin_list.vim`
