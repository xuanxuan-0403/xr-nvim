local opt = require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    -- 打开新终端后自动进入插入模式
    start_in_insert = true,
    -- 在当前buffer的下方打开新终端
    direction = 'horizontal',
})

local Terminal  = require('toggleterm.terminal').Terminal

local htopterm = Terminal:new({
    cmd = 'htop',
    direction = 'float'
})

function htop_toggle()
	htopterm:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>ht", "<Cmd>lua htop_toggle()<CR>", {noremap = true, silent = true})
