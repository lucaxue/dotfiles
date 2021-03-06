local packer = require 'lib.packer-init'

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer manage itself

  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('user.plugins.github-theme')
    end
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('user.plugins.lspconfig')
    end
  }

  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require('user.plugins.luasnip')
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('user.plugins.cmp')
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('user.plugins.treesitter')
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('user.plugins.autopairs')
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('user.plugins.gitsigns')
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('user.plugins.telescope')
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() 
      require('user.plugins.tree')
    end
  }

  use {
    'f-person/auto-dark-mode.nvim',
    config = function() 
      require('user.plugins.auto-dark-mode')
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
