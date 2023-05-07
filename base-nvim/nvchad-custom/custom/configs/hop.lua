vim.keymap.set("n", "<leader>hc", ":HopChar1<CR>", {silent = true, noremap = true,
  desc = "hop: search char"} )

vim.keymap.set("n", "<leader>hw", ":HopWord<CR>", {silent = true, noremap = true,
  desc = "hop: search word"} )

vim.keymap.set("n", "<leader>hh", ":HopAnywhere<CR>", {silent = true, noremap = true,
  desc = "hop: search anywhere"} )

vim.keymap.set("n", "<leader>hl", ":HopLineStart<CR>", {silent = true, noremap = true,
  desc = "hop: search line start"} )
