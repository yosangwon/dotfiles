-- Make a new tab like Firefox®
vim.keymap.set("n", "<C-t>", ":tabnew<CR>")
vim.keymap.set("i", "<C-t>", "<Esc>:tabnew<CR>")

vim.keymap.set("n", "j", "gj", { noremap = true })
vim.keymap.set("n", "k", "gk", { noremap = true })
