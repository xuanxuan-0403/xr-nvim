require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/telescope")
-- require("plugins/dashboard")
require("plugins/toggleterm")
require("plugins/coc")
require("plugins/transparent")

-- NeoVide
-- 字体
vim.opt.guifont = { "Operator Mono" } -- text below applies for VimScript
-- 透明背景
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_transparency = 0.8
-- 滚动长度动画
vim.g.neovide_scroll_animation_length = 0.3
-- 刷新率
vim.g.neovide_refresh_rate = 144
-- 空闲刷新率
vim.g.neovide_refresh_rate_idle = 5
-- 抗锯齿
vim.g.neovide_cursor_antialiasing = true
-- 光标移动的粒子效果
vim.g.neovide_cursor_vfx_mode = "railgun"
-- 光标切换效果
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_cursor_vfx_mode = "ripple"
