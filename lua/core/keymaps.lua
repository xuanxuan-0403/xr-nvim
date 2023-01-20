vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- --
keymap.set("i", "jj", "<ESC>")


-- ---------- 插件 ---------- -- 
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
