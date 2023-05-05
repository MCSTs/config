--> 文件树

-- g?
-- open help menu


-- 默认开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require("nvim-tree").setup()

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    actions = {
        open_file = { quit_on_open = false }
    },
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
    -- 隐藏.文件 和 node_modules文件夹
    filters = {
        -- dotfile = true
        custom = { '^\\.', '^.git$', '^node_modules$' }
    },
    git = {
        enable = true,
        ignore = true
    },
    view = {
        -- 宽度
        width = 32,
        side = "left", -- or "right"
        -- 隐藏根目录
        hide_root_folder = false,
        -- 不显示行数, default:false
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = "yes"
    },
    renderer = {
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            -- icons = {
            --     corner = "└",
            --     edge = "│",
            --     item = "│",
            --     bottom = "─",
            --     none = " ",
            -- },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            modified_placement = "after",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
            },
            -- glyphs = {
            --     default = "",
            --     symlink = "",
            --     bookmark = "",
            --     modified = "●",
            --     folder = {
            --         arrow_closed = "",
            --         arrow_open = "",
            --         default = "",
            --         open = "",
            --         empty = "",
            --         empty_open = "",
            --         symlink = "",
            --         symlink_open = "",
            --     },
            --     git = {
            --         unstaged = "✗",
            --         staged = "✓",
            --         unmerged = "",
            --         renamed = "➜",
            --         untracked = "★",
            --         deleted = "",
            --         ignored = "◌",
            --     },
            -- },
        }
    },
    --   log = {
    --     enable = true,
    --     types = {
    --       diagnostics = true
    --     }
    --   },
    -- diagnostics = {
    --   enable = true,
    --   show_on_dirs = false,
    --   debounce_delay = 50
    -- icons = {
    --   hint = '',
    --   info = '',
    --   warning = '',
    --   error = ''
    -- }
    -- }
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>",
    { silent = true, noremap = true, desc = "Toggle explorer" }
)
