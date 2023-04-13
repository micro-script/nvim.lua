vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 
-- ----------- insert mode ------------

-- ----------- visual mode ------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ----------- normal mode ------------

-- cancel highlight.
vim.keymap.set("n", "<leader>nh",":nohl<CR>")

-- ----------- plugin mapping ------------

--nvim.tree explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
