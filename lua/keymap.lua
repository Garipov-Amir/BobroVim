-- [[ SET <LEADER> KEY AS <SPACE>]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- [[ DISABLES ARROW KEYS ]]
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- [[ NeoTree KEYS ]]
vim.keymap.set("n", "<C-§>", ":Neotree filesystem reveal left<CR>", {})
