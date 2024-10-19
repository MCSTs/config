require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- disable key
map("n", "s", "<nop>")
map("n", "S", "<nop>")
map("n", "Q", "<nop>")


-- redo
map("n", "U", "<cmd>redo<cr>", { noremap = true, desc = "redo" })

-- quit and save
map("n", "<leader>w", "<cmd>w<cr>", { noremap = true, silent = true })
map("n", "<leader>q", ":q<cr>", { desc = "quit" })
map("n", "<leader><leader>q", ":q!<cr>", { desc = "force quit" })

-- split windows
map("n", "<leader>sl", "<c-w>v", { desc = "split windos vertical" })
map("n", "<leader>sj", "<c-w>s", { desc = "split windos horizintal" })

-- buffer
map("n", "L", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "H", "<cmd>bprevious<cr>", { desc = "previous buffer" })
map("n", "<leader>\\", "<c-^>", { desc = "switch buffer" })
map("n", "<leader>D", ":%bd<cr>", { desc = "delete all buffer" })

-- Move line
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Beter search
-- ["*"] = { "*N" },
-- ["#"] = { "#N" },
map("n", "gw", "*", { desc = "Search current word", remap = true })

-- Toggle case
-- ["`"] = { "~" },

-- Create new buffer
map("n", "<leader>nf", "<cmd>enew<cr>", { desc = "new file" })

-- noh
map("n", "<leader><cr>", ":noh<cr>", { desc = "cancel highlights", silent = true })

-- jump to init.lua
map("n", "<leader>rc", "<cmd> e $MYVIMRC <cr>", { desc = "Jump to init.lua file", silent = true })
-- map("n", "<leader><leader>i", "<cmd> e ~/github/myStuff/config/base-nvim/nvchad-custom/custom/init.lua <cr>",
-- "Jump to github/init.lua", opts = { silent = true } },

-- workDir
map("n", "<leader>cd", "<cmd> lcd %:p:h <cr>", { desc = "set parentDir" })

-- cursor move
map("n", "E", "$", { desc = "move to the end of line" })
map("n", "W", "0", { desc = "move to the start of line" })

-- tab
map("n", "<A-t>", ":tabnew<cr>", { desc = "new tab", silent = true })
map("n", "<A-T>", ":tabnew %<cr>", { desc = "new tab(current buffer)", silent = true })
map("n", "<A-n>", ":tabnext<cr>", { desc = "next tab", silent = true })
map("n", "<A-p>", ":tabprevious<cr>", { desc = "previous tab", silent = true })
map("n", "<A-q>", ":tabclose<cr>", { desc = "close tab", silent = true })
map("n", "<A-Q>", ":tabonly<cr>", { desc = "close all tabs except current tab", silent = true })

-- resize windows
map("n", "<up>", ":res +5<cr>", { desc = "resize up" })
map("n", "<down>", ":res -5<cr>", { desc = "resize down" })
map("n", "<left>", ":vertical resize-5<cr>", { desc = "resize left" })
map("n", "<right>", ":vertical resize+5<cr>", { desc = "resize right" })

-- MaximizerToggle
map("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "MaximizerToggle", silent = true })
-- ColorizerToggle
map("n", "<leader><leader>c", ":ColorizerToggle<cr>", { desc = "ColorizerToggle", silent = true })
-- lazy
map("n", "<leader>la", ":Lazy<cr>", { desc = "Open LazyMenu", silent = true })


-- ========= V ===============
-- cursor move
map("v", "E", "$", { desc = "move to the end of line" })
map("v", "W", "0", { desc = "move to the start of line" })
-- Move line
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
-- better indenting
-- ["<"] = { "<gv" },
-- [">"] = { ">gv" },
-- toggle case
-- ["`"] = { "~" },



-- ============ T ===============
map("t", "<C-j>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  { desc = "escape terminal mode", noremap = true })
map("n", "<C-j>", "<cmd>wincmd j<cr>")
map("n", "<C-k>", "<cmd>wincmd k<cr>")
map("n", "<C-h>", "<cmd>wincmd h<cr>")
map("n", "<C-l>", "<cmd>wincmd l<cr>")


-- ============ I ===============
-- ["<C-l>"] = { "<Right>", "move right" },
-- ["<C-h>"] = { "<Left>", "move left" },
-- ["<C-j>"] = { "<Esc>A", "move end-of-line"},
-- Move line
-- ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", "Move down" },
-- ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", "Move up" },
-- Add undo break-points
-- [","] = { ",<c-g>u" },
-- ["."] = { ".<c-g>u" },
-- [";"] = { ";<c-g>u" },


-- undotree
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", {desc = "undotreeToggle"})
