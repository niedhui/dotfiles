local opts = { noremap = true, silent = true }
local term_opts = { slient = true }

vim.g.mapleader = ","

local keymap = vim.api.nvim_set_keymap

-- Modes:
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

keymap("i", "zz", "<ESC>", opts)
keymap("v", "zz", "<ESC>", opts)

-- Normal mode --
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move text , not work for apple
keymap("n","<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n","<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual mode

-- paste without yank
keymap("v", "p", "_dP", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text , not work for apple
keymap("v", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("v", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Plugins

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)