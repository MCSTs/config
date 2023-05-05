local opts = { silent = true, noremap = true }

opts.desc = "hop: search char"
vim.keymap.set("n", "<leader>hc", ":HopChar1<CR>", opts)

opts.desc = "hop: search word"
vim.keymap.set("n", "<leader>hw", ":HopWord<CR>", opts)

opts.desc = "hop: search anywhere"
vim.keymap.set("n", "<leader>hh", ":HopAnywhere<CR>", opts)

opts.desc = "hop: search line start"
vim.keymap.set("n", "<leader>hl", ":HopLineStart<CR>", opts)
