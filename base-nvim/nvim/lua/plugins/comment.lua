vim.keymap.set( "n", "<leader>/", "gcc", {silent = true, remap = true} )
vim.keymap.set( "v", "<leader>/", "gc", {silent = true, remap = true} )

require('Comment').setup()
