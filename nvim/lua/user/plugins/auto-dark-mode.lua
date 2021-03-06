local auto_dark_mode = require('auto-dark-mode')

auto_dark_mode.setup({
  update_interval = 500,
  set_dark_mode = function()
    vim.api.nvim_set_option('background', 'dark')
    vim.cmd('colorscheme github_dark')
  end,
  set_light_mode = function()
    vim.api.nvim_set_option('background', 'light')
    vim.cmd('colorscheme github_light')
  end,
})
auto_dark_mode.init()
