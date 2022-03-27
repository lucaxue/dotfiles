local packer = require 'lib.packer-init'

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer manage itself

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('user.plugins.lspconfig')
    end
  }

  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('user.plugins.github-theme')
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
