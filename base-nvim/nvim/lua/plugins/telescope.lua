local tele = require('telescope')
local builtin = require('telescope.builtin')
local keymap = vim.keymap
local opts = { silent = true, noremap = true }


opts.desc = "find files"
keymap.set('n', '<leader>ff', builtin.find_files, opts)

opts.desc = "Find history file"
keymap.set('n', '<leader>fo', builtin.oldfiles, opts)

opts.desc = "(rg)Find string in workDir"
keymap.set('n', '<leader>fg', builtin.live_grep, opts)

opts.desc = "(Grep)Find string in workDir"
keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, opts)

opts.desc = "Find help files"
keymap.set('n', '<leader>fh', builtin.help_tags, opts)

opts.desc = "Find register"
keymap.set('n', '<leader>fr', builtin.registers, opts)

opts.desc = "Find history of commands"
keymap.set('n', '<leader>fc', builtin.command_history, opts)

opts.desc = "Find keymaps"
keymap.set('n', '<leader>fk', builtin.keymaps, opts)

opts.desc = "Find buffer"
keymap.set('n', '<leader>fb', builtin.buffers, opts)

opts.desc = "Find marks"
keymap.set('n', '<leader>bm', builtin.marks, opts)

opts.desc = "List buffer's git commits"
keymap.set('n', '<leader>gc', builtin.git_commits, opts)

opts.desc = "List all branches"
keymap.set('n', '<leader>gb', builtin.git_branches, opts)

opts.desc = "Lists current changes per file"
keymap.set('n', '<leader>gs', builtin.git_status, opts)


tele.setup()
