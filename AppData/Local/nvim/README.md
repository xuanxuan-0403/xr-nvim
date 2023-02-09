> 车干的 NeoVim 配置

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

-   下载指定 coc 插件

`:CocUpdate`

-   更新所有插件

> 所有的插件在 lua/plugins/coc.lua

<hr>

# `Neovide`

-   官网详细配置：
    -   https://neovide.dev/configuration.html
-   我的配置：
    -   `init.lua`

# `Mason`

`:Mason`

# 多光标模式

-   `ctrl + n` : 选中同一个单词的结尾字母并**进入多光标模式**

# 其他常用键

> (主要是怕自己忘了)

1. `11j/11k` : 跳转到相对行数 11 行
2. 下面有一段代码，需要快速将光标跳转到这一行的第 2 个 `s` 上
    - 可以 `fs;`

```javascript
const name = 'start';
```

3. `leap.nvim` 快捷移动

    - `<s>`(启动键) + `<n>`(需要查找的按键) + `<d>` 定位键

4. `surround.vim` 快速修改包裹符号

    - `"hello" -> 'hello'`: `cs"'`
    - `test -> "test"`: `ysiw"`
    - `"test" -> test`: `ds"`

    ***

    - `test -> ( test )`: `ysiw(`
    - `test -> (test)`: `ysiw)`
    - `test -> <p>test</p>`: `ysiw<p>`
    - `整行 -> { 整行 }`: `yss{`

    ***

    - `<p class="title">test<p> -> test`: `dst`
        - `dst` : t = tag
