require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "@d", "$a<CR>__import__('pdb').set_trace()<ESC>:w<CR>")
map("n", "@m", "$a<CR>if __name__ == \"__main__\":")

