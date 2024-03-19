local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Buffer Navigation
keymap.set("n", "<leader>bn", ":bnext<CR>", opts)
keymap.set("n", "<leader>bp", ":bprevious<CR>", opts)

-- Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Window Management
keymap.set("n", "<leader>vs", ":vsplit<CR>", opts)
keymap.set("n", "<leader>hs", ":split<CR>", opts)
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Show Full File-Path
keymap.set("n", "<leader>pa", ":echo expand('%:p')<CR>", opts)

-- Indenting
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Diffview
keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", opts)
keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", opts)
