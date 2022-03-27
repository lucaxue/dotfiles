local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Press jk to espace
map("i", "jk", "<ESC>", opts)

-- Preserve visual selection after indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
