--@type MappingsTable
local M = {}

M.general = {
  n = {
    -- disable key
    ["s"] = { "<nop>" },
    ["Q"] = { "<nop>" },

    -- quit and save
    ["<leader>w"] = { ":w<cr>", "Save file" },
    ["<leader>q"] = { ":q<cr>", "quit" },
    ["<leader><leader>q"] = { ":q!<cr>", "force quit" },

    -- split windows
    ["<leader>sl"] = { "<c-w>v", "split windos vertical" },
    ["<leader>sj"] = { "<c-w>s", "split windos horizintal" },

    -- buffer
    ["L"] = { ":bnext<cr>", "next buffer" },
    ["H"] = { ":bprevious<cr>", "previous buffer" },
    ["<leader>\\"] = { "<c-^>", "switch buffer" },
    ["<leader>D"] = { ":%bd<cr>", "delete all buffer" },

    -- Move line
    ["<A-j>"] = { "<cmd>m .+1<cr>==", "Move down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", "Move up" },

    -- Beter search
    ["*"] = { "*N" },
    ["#"] = { "#N" },
    ["gw"] = { "*", "Search current word", opts = { remap = true } },

    -- Toggle case
    ["`"] = { "~" },

    -- Create new buffer
    ["<leader>nf"] = { "<cmd>enew<cr>", "new file" },

    -- noh
    ["<leader><cr>"] = { ":noh<cr>", "cancel highlights", opts = { silent = true } },

    -- jump to init.lua
    ["<leader>rc"] = { "<cmd> e $MYVIMRC <cr>", "Jump to init.lua file", opts = { silent = true } },

    -- workDir
    ["<leader>cd"] = { "<cmd> lcd %:p:h <cr>", "set parentDir" },

    -- cursor move
    ["E"] = { "$", "move to the end of line" },
    ["W"] = { "0", "move to the start of line" },

    -- tab
    ["<A-t>"] = { ":tabnew %<cr>", "new tab", opts = { silent = true } },
    ["<A-n>"] = { ":tabNext<cr>", "next tab", opts = { silent = true } },
    ["<A-p>"] = { ":tabprevious<cr>", "previous tab", opts = { silent = true } },
    ["<A-q>"] = { ":tabclose<cr>", "close tab", opts = { silent = true } },

    -- resize windows
    ["<up>"] = { ":res +5<cr>", "resize up" },
    ["<down>"] = { ":res -5<cr>", "resize down" },
    ["<left>"] = { ":vertical resize-5<cr>", "resize left" },
    ["<right>"] = { ":vertical resize+5<cr>", "resize right" },

    -- MaximizerToggle
    ["<leader>sm"] = { ":MaximizerToggle<CR>", "MaximizerToggle", opts = { silent = true } },
    -- SymbolsOutline
    ["<leader>so"] = { ":SymbolsOutline<CR>", "Toggle SymbolsOutline", opts = { silent = true } },
    -- ColorizerToggle
    ["<leader><leader>c"] = { ":ColorizerToggle<cr>", "ColorizerToggle", opts = { silent = true } },
  },
  v = {
    -- cursor move
    ["E"] = { "$", "move to the end of line" },
    ["W"] = { "0", "move to the start of line" },
    -- Move line
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", "Move down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", "Move up" },
    -- better indenting
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
    -- toggle case
    ["`"] = { "~" },
  },
  t = {
    ["<C-j>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "escape terminal mode" },
    -- ["<C-j>"] = { "<cmd>wincmd j<cr>" },
    ["<C-k>"] = { "<cmd>wincmd k<cr>" },
    ["<C-h>"] = { "<cmd>wincmd h<cr>" },
    -- ["<C-l>"] = { "<cmd>wincmd l<cr>" },
  },
  i = {
    ["<C-l>"] = { "<Right>", "move right" },
    ["<C-h>"] = { "<Left>", "move left" },
    -- Move line
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", "Move down" },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", "Move up" },
    -- Add undo break-points
    [","] = { ",<c-g>u" },
    ["."] = { ".<c-g>u" },
    [";"] = { ";<c-g>u" },
  },
}

M.disabled = {
  n = {
    -- whichkey
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",

    -- lspconfig
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
    ["<leader>wa"] = "",
    ["<leader>D"] = "",
    ["<leadar>ra"] = "",
    ["<leader>f"] = "",
    ["<leader>q"] = "",

    -- tabufline
    ["<leader>x"] = "",
    ["<tab>"] = "",
    ["<S-tab>"] = "",

    -- telescope
    ["<leader>fw"] = "",

    -- nvim-tree
    ["<C-n>"] = "",

    -- nvterm
    ["<leader>h"] = "",
    ["<leader>v"] = "",

    ["<Esc>"] = { ":noh <CR>", "clear highlights" },
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "toggle line number" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },

    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- empty mode is same as using <cmd> :map
    -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },

    -- new buffer
    ["<leader>b"] = { "<cmd> enew <CR>", "new buffer" },
  },
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },
  t = {
    ["<C-x>"] = "",
  },
  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.tabufline = {
  n = {
    -- close buffer + hide terminal buffer
    ["<leader>d"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}


M.telescope = {
  n = {
    -- find
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps<CR>", "keymaps" },
    ["<leader>bm"] = { "<cmd> Telescope marks<CR>", "find marks" },
  },
}

M.gitsigns = {
  n = {
    -- Actions
    ["<leader>rh"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },
    ["<leader>sh"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "stage hunk",
    },
    ["<leader>tl"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "toggle current line blame",
    },
    ["<leader><leader>u"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "undo stage hunk",
    },
    ["<leader>gg"] = {
      function()
        require("gitsigns").toggle_signs()
      end,
      "Toggle gitsigns",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "lsp definition type",
    },

    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "floating diagnostic",
    },
    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },
    ["<leader>;a"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },
    ["<leader>;r"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "remove workspace folder",
    },

    ["<leader>;l"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "list workspace folders",
    },
  },
}

return M
