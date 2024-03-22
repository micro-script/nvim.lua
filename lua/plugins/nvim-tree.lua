-- See https://github.com/nvim-tree/nvim-tree.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- It is selected in ./core/options.lua
-- vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    -- icons = {
    --   glyphs = {
    --     git = {
    --       unstaged = "",
    --       staged = "",
    --       unmerged = "",
    --       renamed = "",
    --       untracked = "",
    --       deleted = "",
    --       ignored = "",
    --     }
    --   },
    -- },
  },
  filters = {
    dotfiles = true,
  },
})
