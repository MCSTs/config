vim.g.mapleader = " "

local opts = {silent = true, noremap = true}
local keymap = vim.keymap
local cmd = vim.cmd

-- Cancel
keymap.set("n", "s", "<nop>")
keymap.set("n", "Q", "<nop>")

-- navigator
keymap.set("n", "<c-j>", "<c-w>j", {desc = "move down"})
keymap.set("n", "<c-k>", "<c-w>k", {desc = "move up"})
keymap.set("n", "<c-h>", "<c-w>h", {desc = "move left"})
keymap.set("n", "<c-l>", "<c-w>l", {desc = "move right"})

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>q", vim.cmd.quit)
keymap.set("n", "<leader>w", vim.cmd.write)

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "W", "0")
keymap.set("n", "E", "$")
keymap.set("v", "W", "0")
keymap.set("v", "E", "$")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>rc", "<cmd> e /home/mcst/.config/nvim/init.lua <CR>",
    {silent = true, noremap = true, desc = "open init.lua"}
)

-- quickfix
keymap.set("n", "<leader><C-q>", "<cmd>copen<CR>", opts)
keymap.set("n", "<leader><C-q>", cmd.copen, opts)
keymap.set("n", "<leader><C-w>", cmd.close, opts)

-- multi windows
keymap.set("n", "<leader>sl", "<C-w>v")
keymap.set("n", "<leader>sj", "<C-w>s")

-- switch buffer
keymap.set("n", "<M-n>", cmd.bnext)
keymap.set("n", "<M-p>", cmd.bprevious)

-- tab
keymap.set("n", "<M-j>", ":tabNext<CR>", opts)
keymap.set("n", "<M-k>", ":tabprevious<CR>", opts)
keymap.set("n", "<M-q>", ":tabclose<CR>", opts)
keymap.set("n", "<M-t>", ":tabnew %<CR>", opts)

keymap.set("n", "<leader><CR>", cmd.nohl)

-- delete buffer
keymap.set("n", "<leader>D", "<cmd>%bd<CR>")
keymap.set("n", "<leader>d", "<cmd>bd<CR>")

-- windows size
keymap.set("n", "<up>", ":res +5<CR>")
keymap.set("n", "<down>", ":res -5<CR>")
keymap.set("n", "<left>", ":vertical resize-5<CR>")
keymap.set("n", "<right>", ":vertical resize+5<CR>")

keymap.set("n", "<leader>\\", "<C-^>")

keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<CR>")
