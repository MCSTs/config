local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local opts = { silent = true, noremap = true }

opts.desc = "mark current buffer"
vim.keymap.set("n", "<leader>m", mark.add_file, opts)

opts.desc = "toggle harpoon"
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, opts)

opts.desc = "harpoon select mark1"
vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, opts)
opts.desc = "harpoon select mark2"
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, opts)
opts.desc = "harpoon select mark3"
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, opts)
opts.desc = "harpoon select mark4"
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, opts)
