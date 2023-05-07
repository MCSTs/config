
-- local opt = vim.opt

-- opt.azygit_floating_window_winblend = 0 -- transparency of floating window
-- opt.azygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
-- opt.azygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] -- customize lazygit popup window corner characters
-- opt.azygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
-- opt.azygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed
--
-- opt.azygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
-- opt.azygit_config_file_path = '' -- custom config file path
--
-- transparency of floating window 
lazygit_floating_window_winblend = 0

-- scaling factor for floating window
lazygit_floating_window_scaling_factor = 0.9

-- customize lazygit popup window corner characters
lazygit_floating_window_corner_chars = { '╭', '╮', '╰', '╯' }

-- use plenary.nvim to manage floating window if available 
lazygit_floating_window_use_plenary = 0

-- fallback to 0 if neovim-remote is not installed
lazygit_use_neovim_remote  = 1

-- config file path is evaluated if this value is 1
lazygit_use_custom_config_file_path = 0

-- custom config file path
lazygit_config_file_path = '' 

vim.keymap.set("n", "<leader>lg", "<cmd> LazyGit<CR>", 
  {silent = true, noremap = true, desc = "open LazyGit" }
)
