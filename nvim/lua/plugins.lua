return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Let packer manage itself

  use {
      'projekt0n/github-nvim-theme',
      config = function()
          require('plugins.github-theme')
      end
  }
end)
