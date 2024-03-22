vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 
-- ----------- insert mode ------------

-- ----------- visual mode ------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ----------- normal mode ------------

-- cancel highlight.
vim.keymap.set("n", "<leader>nh",":nohl<CR>")

-- windows mapping.
---- create new window or delete window.
vim.keymap.set("n", "<leader>wv", ":wincmd v<CR>")
vim.keymap.set("n", "<leader>ws", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>wq", ":wincmd q<CR>")

---- move to different window.
vim.keymap.set("n", "<leader>wh", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>wj", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>wk", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>wl", ":wincmd l<CR>")

---- resize window. 
vim.keymap.set("n", "<leader>w=", ":wincmd +<CR>")
vim.keymap.set("n", "<leader>w-", ":wincmd -<CR>")
vim.keymap.set("n", "<leader>w;", ":wincmd =<CR>")

--nvim.tree explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--bufferline.nvim (on the terminal top)
vim.keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")

--telescope mapping
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', '<leader>tq', builtin.treesitter, {})

--nvim diagnostic mapping
vim.keymap.set('n', '<leader>dl', "<Cmd>lua vim.diagnostic.open_float(0,{scope=\"l\"})<CR>")
