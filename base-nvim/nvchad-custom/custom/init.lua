local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- 打开时自动定位到上次关闭位置
autocmd(
  { "BufReadPost" },
  { pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)

local opt = vim.opt

opt.guicursor = ""
opt.cursorline = true

opt.nu = true
opt.rnu = true

opt.ignorecase = true
opt.smartcase = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.clipboard:append "unnamedplus"

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 5
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes"

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.list = true -- Show some invisible characters (tabs...

opt.isfname:append "@-@"

opt.updatetime = 100

opt.colorcolumn = "80"

-- file encoding & coding
opt.fileencodings = "utf-8,ucs-bom,gb18030,gbk,gb2312,cp936"
opt.termencoding = "utf-8"
opt.encoding = "utf-8"

-- opt.cmdheight = 0

-- ufo
vim.o.foldcolumn = '0' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- markdown preview
vim.g.mkdp_auto_close = 0
