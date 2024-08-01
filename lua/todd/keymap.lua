local keymap = vim.keymap

-- Easier escape
keymap.set("i", "jj", "<esc>")

-- Re-open the config directory
keymap.set("n", "<leader>ev", "<cmd>e ~/.config/nvim/<cr>")

-- Window/pane movement
keymap.set("n", "<leader>wq", "<C-w>h")
keymap.set("n", "<leader>ws", "<C-w>j")
keymap.set("n", "<leader>ww", "<C-w>k")
keymap.set("n", "<leader>we", "<C-w>l")

-- Sane movement
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")
keymap.set("n", "B", "^")
keymap.set("n", "E", "$")
keymap.set("n", "n", "nzz")

-- Convenience
keymap.set("n", "<leader>hl", "<cmd>nohl<cr>")
