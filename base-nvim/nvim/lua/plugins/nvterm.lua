require("nvterm").setup({
    terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
            float = {
                relative = 'editor',
                row = 0.3,
                col = 0.25,
                width = 0.5,
                height = 0.4,
                border = "single",
            },
            horizontal = { location = "rightbelow", split_ratio = .3, },
            vertical = { location = "rightbelow", split_ratio = .5 },
        }
    },
    behavior = {
        autoclose_on_quit = {
            enabled = false,
            confirm = true,
        },
        close_on_exit = true,
        auto_insert = true,
    },
})

vim.keymap.set({ 'n', 't' }, '<A-h>', function()
    require("nvterm.terminal").toggle('horizontal')
end, { silent = true, noremap = true, desc = "Toggle term horizontal" }
)
vim.keymap.set({ 'n', 't' }, '<A-v>', function()
    require("nvterm.terminal").toggle('vertical')
end, { silent = true, noremap = true, desc = "Toggle term vertical" }
)
vim.keymap.set({ 'n', 't' }, '<A-i>', function()
    require("nvterm.terminal").toggle('float')
end, { silent = true, noremap = true, desc = "Toggle term float" }
)
