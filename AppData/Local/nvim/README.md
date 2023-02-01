>  车干的 NeoVim 配置

<hr>

![nvimyes](https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&pause=1000&color=000000&vCenter=true&width=435&height=45&lines=NVIM+YES)

# `NeoVim`

## 文件目录结构

```sh
.
├─ lua/                
│  ├─ core/            -- 通用配置和按键映射
│  │  ├─ keymaps.lua   -- 按键映射
│  │  ├─ options.lua   -- 通用配置
│  ├─ plugins/         -- 插件详细配置
│  │  ├─ plugins-setup.lua       -- packer
├─ init.lua            -- 配置入口
├─ coc-settings.json   -- coc配置
└─ README.md           -- README
```



## 配置文件位置

### `windows`

`C:\Users\Lenovo\AppData\Local\nvim`



## `coc.nvim`

`:CocInstall coc-xx`

* 下载指定 coc 插件

`:CocUpdate`

* 更新所有插件



<hr>

# `Neovide`

* 官网详细配置：
  * https://neovide.dev/configuration.html
* 我的配置：
  * `init.lua`
