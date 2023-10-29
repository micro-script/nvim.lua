----line number----
vim.opt.number = true
vim.opt.relativenumber = true


----indentation----
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

----prevent warpping----
vim.opt.wrap = false 
vim.opt.colorcolumn = "100"

----cursor line----
vim.opt.cursorline = true

----enable mouse----
vim.opt.mouse:append("a")

----enable system clipboard----
vim.opt.clipboard:append("unnamedplus")

----set new window defualt direction(right and below)----
vim.opt.splitright = true
vim.opt.splitbelow = true

----search ignore upcase and lowcase----
vim.opt.ignorecase = true
vim.opt.smartcase = true

----appreance----
vim.opt.termguicolors = true
vim.signcolumn = "yes"
vim.opt.scrolloff = 5

-- See https://github.com/folke/tokyonight.nvim
vim.cmd[[colorscheme tokyonight-night]] -- theme(reuaire plugin folke/tokyonight.nvim)

