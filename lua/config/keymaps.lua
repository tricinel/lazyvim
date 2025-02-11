-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Yanky keymaps
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Disable arrow keys in normal mode``
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

vim.keymap.set("n", "E", "$") -- Move to the end of the line
vim.keymap.set("n", "B", "^") -- Move to the beginning of the line

vim.keymap.set("n", "U", "<c-r>") -- Redo

-- Working with files
vim.keymap.set("n", "QQ", ":q!<enter>", { noremap = false })
vim.keymap.set("n", "WW", ":w!<enter>", { noremap = false })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = false })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = false })

vim.keymap.set("n", "n", "nzzzv", { noremap = false })
vim.keymap.set("n", "N", "Nzzzv", { noremap = false })

-- Window management --
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make windows equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Working with buffers
vim.keymap.set("n", "tk", ":blast<enter>", { noremap = false })
vim.keymap.set("n", "tj", ":bfirst<enter>", { noremap = false })
vim.keymap.set("n", "th", ":bprev<enter>", { noremap = false })
vim.keymap.set("n", "tl", ":bnext<enter>", { noremap = false })
vim.keymap.set("n", "td", ":bdelete<enter>", { noremap = false })
