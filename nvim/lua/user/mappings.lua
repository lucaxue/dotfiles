local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('i', 'jk', '<Esc>', opts) -- jk to escape
