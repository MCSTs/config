local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- 打开时自动定位到上次关闭位置
autocmd(
  { "BufReadPost" },
  { pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)

opt.guicursor = ""
opt.cursorline = true

opt.nu = true
opt.rnu = true

opt.ignorecase = true
opt.smartcase = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.clipboard:append("unnamedplus")

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 5
opt.signcolumn = "yes"

opt.isfname:append("@-@")

opt.updatetime = 100

opt.colorcolumn = "80"
