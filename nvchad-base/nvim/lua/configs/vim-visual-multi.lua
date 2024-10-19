-- vim.api.nvim_set_keymap('n', '<C-J>', '<Plug>(VM-Add-Cursor-Down)', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<C-K>', '<Plug>(VM-Add-Cursor-Up)', {noremap = true})

-- 使用
-- vim.cmd([[highlight! link VM_Extend VM_Extend_hl]])
-- vim.cmd([[highlight! link VM_Cursor VM_Cursor_hl]])

-- vim.g.VM_theme = 'purplegray'
-- vim.g.VM_Mono_hl   = '#29ABE2'
-- vim.g.VM_Extend_hl = '#3C69E7'
-- vim.g.VM_Cursor_hl = '#9932CC'
-- vim.g.VM_Insert_hl = '#EE82EE'

-- 定义 highlight 样式
vim.cmd([[highlight VMMyMono guibg=#9932CC]])
vim.cmd([[highlight VMMyExtend guibg=#3C69E7]])
vim.cmd([[highlight VMMyCursor guifg=#D3D3D3]])
-- vim.cmd([[highlight VMMyCursor guibg=#FFE4B5]])
vim.cmd([[highlight VMMyInsert guifg=#EE82EE]])

-- 应用到 vm 的 highlight 组
vim.g.VM_Mono_hl = 'VMMyMono'
vim.g.VM_Extend_hl = 'VMMyExtend'
vim.g.VM_Cursor_hl = 'VMMyCursor'
vim.g.VM_Insert_hl = 'VMMyInsert'
