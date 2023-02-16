vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.smartindent = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<C-k>', '<C-w>k', {silent = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {silent = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {silent = true})
vim.keymap.set('n', '<C-h>', '<C-w>h', {silent = true})
