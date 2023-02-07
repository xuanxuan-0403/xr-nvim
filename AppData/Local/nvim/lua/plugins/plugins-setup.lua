-- 自动安装 packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use("nvim-lua/plenary.nvim")

    -- 中文help doc
    use { 'yianwillis/vimcdoc', event = 'VimEnter' }

    -- javascrip 语法支持
    use 'pangloss/vim-javascript'
    use 'jelera/vim-javascript-syntax'
    use 'othree/javascript-libraries-syntax.vim'
    use 'leafgarland/typescript-vim'
    use 'joukevandermaas/vim-ember-hbs'

    -- use 'mxw/vim-jsx'
    use 'sheerun/vim-polyglot'
    use 'dense-analysis/ale' -- Eslint

    -- 它为 Vim 带来了几个类似 IDE 的特性，并且很容易设置。它建立在语言服务器的概念之上，在现代编辑器中，语言服务器具有自动完成、转到定义、悬浮工具提示等功能。
    use { 'neoclide/coc.nvim', branch = 'release' }

    -- 主题
    use 'folke/tokyonight.nvim' 
    use 'JoosepAlviste/palenightfall.nvim'

    use 'shaunsingh/nord.nvim'
    use {
        'nvim-lualine/lualine.nvim', -- 状态栏
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua', -- 文档树
        requires = {
            'nvim-tree/nvim-web-devicons', -- 文档树图标
        },
    }
    use("christoomey/vim-tmux-navigator") -- 用ctl-hjkl来定位窗口
    use "nvim-treesitter/nvim-treesitter" -- 语法高亮
    use "p00f/nvim-ts-rainbow" -- 括号区分

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
        "neovim/nvim-lspconfig"
    }
    -- 自动补全
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path" -- 文件路径

    -- lsp自动补全
    use 'prabirshrestha/vim-lsp'
    use 'mattn/vim-lsp-settings'

    -- 增强lsp
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            require("lspsaga").setup({})
        end,
        requires = { {"nvim-tree/nvim-web-devicons"} }
    })

    -- 一个快速查找文件的plugins <space>ff
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "numToStr/Comment.nvim" -- gcc 和 gc 注释
    use "windwp/nvim-autopairs" -- 自动补全括号

    use "akinsho/bufferline.nvim" -- buffer分隔线

    -- dashboard: 一个neovim的开屏插件
    -- use {
    --   'glepnir/dashboard-nvim',
    --   event = 'VimEnter',
    --   config = function()
    --     require('dashboard').setup {
    --       -- config
    --     }
    --   end,
    --   requires = {'nvim-tree/nvim-web-devicons'}
    -- }
    use 'nvim-tree/nvim-web-devicons'
    -- 开屏插件
    use 'mhinz/vim-startify'
    -- 代码折叠
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- 终端
    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
    use 'voldikss/vim-floaterm'

    -- 状态栏美化
    -- use 'vim-airline/vim-airline'
    -- use 'vim-airline/vim-airline-themes'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- 代码缩进线
    use 'Yggdroot/indentLine'

    -- 主题配色
    use 'w0ng/vim-hybrid'

    -- 透明背景
    use 'xiyaowong/nvim-transparent'

    -- cursorword 插件可以给当前光标下的单词增加下划线
    use 'itchyny/vim-cursorword'

    -- 可以使用不同颜色同时高亮多个单词 <space>k <space>K
    use 'lfv89/vim-interestingwords'

    -- 代码格式化
    use 'vim-autoformat/vim-autoformat'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
