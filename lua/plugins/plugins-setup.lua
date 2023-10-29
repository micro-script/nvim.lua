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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim
  use 'folke/tokyonight.nvim' -- theme
  use {
    'nvim-lualine/lualine.nvim', -- state line
    requires = { 'nvim-tree/nvim-web-devicons', opt = false} -- state line icon
  }

  use {
    'nvim-tree/nvim-tree.lua', -- file explorer(file tree) in neovim.
    requires = {
      'nvim-tree/nvim-web-devicons', opt = false -- icons for file explorer. 
    },
  }
  use 'nvim-treesitter/nvim-treesitter' -- sytnax enhanced highlight.

  use { -- language sever.
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  -- auto completion
  use "hrsh7th/nvim-cmp" --A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-vsnip" -- nvim-cmp source for vim-vsnip
  use "hrsh7th/vim-vsnip" -- VSCode(LSP)'s snippet feature in vim/nvim.

  use "numToStr/Comment.nvim"  
  use "windwp/nvim-autopairs"
  
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}-- top buffer line
  use "lewis6991/gitsigns.nvim" -- git tips in left side 

  -- Install Markdown Preview.
  --
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  --use({"iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) 
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
