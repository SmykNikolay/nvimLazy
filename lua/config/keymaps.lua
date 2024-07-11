-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kk", "<Esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true }) -- Center cursor in the window with C-uzz
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true }) -- Center cursor in the window with C-uzz
