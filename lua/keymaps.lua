-- Easier escape
vim.keymap.set('i', 'jj', '<esc>')

-- Re-open the config directory
vim.keymap.set('n', '<leader>ev', '<cmd>e ~/.config/nvim/<cr>')

-- Window/pane movement
vim.keymap.set('n', '<leader>wq', '<C-w>h')
vim.keymap.set('n', '<leader>ws', '<C-w>j')
vim.keymap.set('n', '<leader>ww', '<C-w>k')
vim.keymap.set('n', '<leader>we', '<C-w>l')

-- Sane movement
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'B', '^')
vim.keymap.set('n', 'E', '$')
vim.keymap.set('n', 'n', 'nzz')

-- Convenience
vim.keymap.set('n', '<leader>hl', '<cmd>nohl<cr>')

-- NvimTree
vim.keymap.set('n', '<leader>nt', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>nf', '<cmd>NvimTreeFindFile<cr>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Please no help
vim.keymap.set('', '<F1>', '<nop>')

-- Easier buffer movement
vim.keymap.set('n', '<left>', '<cmd>bp<cr>')
vim.keymap.set('n', '<right>', '<cmd>bn<cr>')

