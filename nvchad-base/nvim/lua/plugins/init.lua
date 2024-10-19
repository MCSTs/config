return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "folke/zen-mode.nvim",
    opts = require("configs.zen-mode"),
    keys = {
      { "<leader>zm", "<cmd>ZenMode<cr>", desc = "Toggle zen-mode" }
    },
  },
  {
    "kylechui/nvim-surround",
    -- event = "VeryLazy",
    -- event = "InsertEnter",
    lazy = false,
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          normal = "<leader>s",
          normal_cur = "<leader>ss",
          normal_line = "<leader>S",
          normal_cur_line = "<leader>SS",
          visual = "S",
          visual_line = "gS",
          delete = "ds",
          change = "cs",
        },
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    keys = {
      { "<leader>hc", ":HopChar1<CR>", {
        silent = true,
        noremap = true,
        desc = "hop: search char"
      } },
      { "<leader>hw", ":HopWord<CR>", {
        silent = true,
        noremap = true,
        desc = "hop: search word"
      } },
      { "<leader>hh", ":HopAnywhere<CR>", {
        silent = true,
        noremap = true,
        desc = "hop: search anywhere"
      } },
      { ";", ":HopLineStart<CR>", {
        silent = true,
        noremap = true,
        desc = "hop: search line start"
      } },
    },
    cmd = { "HopChar1", "HopWord", "HopAnywhere", "HopLineStart" },
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>sm", "<cmd>MaximizerToggle<cr>", desc = "Toggle Maximizer" },
    },
    cmd = "MaximizerToggle",
  },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   keys = { "<leader>so", "<cmd>SymbolsOutline<cr>", desc = "Toggle SymbolsOutline" },
  --   cmd = "SymbolsOutline",
  --   config = function()
  --     require("symbols-outline").setup()
  --   end,
  -- },
  {
    "mg979/vim-visual-multi",
    keys = {
      {
        "<C-n>",
        mode = { 'n', 'v' },
        '<Plug>(VM-Find-Under)'
      },
      {
        '<M-C-j>',
        mode = { 'n' },
        '<Plug>(VM-Add-Cursor-Down)'
      },
      {
        '<M-C-k>',
        mode = { 'n' },
        '<Plug>(VM-Add-Cursor-Up)'
      }
    },
    config = function()
      require("configs.vim-visual-multi")
    end,
    branch = "master",
  },
  {
    "mbbill/undotree",
    -- keys = {
    --   "<leader>u",
    --   mode = { 'n' },
    --   "<cmd>UndotreeToggle<cr>",
    --   noremap = true,
    --   slient = true,
    --   desc = "undotreeToggle"
    -- },
    cmd = { "UndotreeToggle" },
  },
  {
    "ggandor/flit.nvim",
    dependencies = {
      "tpope/vim-repeat",
      "ggandor/leap.nvim",
    },
    keys = { "f", "F", "t", "T" },
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        -- A string like "nv", "nvo", "o", etc.
        labeled_modes = "v",
        multiline = true,
        opts = {}
      }
    end
  },
  {
    "windwp/nvim-spectre",
    keys = {
      {
        '<leader><leader>s',
        mode = { 'n' },
        '<cmd>lua require("spectre").open()<CR>',
        desc =
        "Open Spectre"
      },
      {
        '<leader>cs',
        mode = { 'n', 'v' },
        '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
        desc =
        "Search current word"
      },
      {
        '<leader>cf',
        mode = { 'n' },
        '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
        desc =
        "Search on current file"
      },
    },
    config = function()
      require('spectre').setup()
    end,
  },
  -- {
  --   "utilyre/barbecue.nvim",
  --   name = "barbecue",
  --   version = "*",
  --   dependencies = {
  --     "SmiteshP/nvim-navic",
  --   },
  --   opts = require("custom.configs.barbecue"),
  --   init = function()
  --     require("core.utils").lazy_load "barbecue"
  --   end,
  -- },
  -- {
  --   "JuanZoran/Trans.nvim",
  --   build = function() require 'Trans'.install() end,
  --   keys = {
  --     -- 可以换成其他你想映射的键
  --     { '<leader>mm', mode = { 'n', 'x' }, '<Cmd>Translate<CR>', desc = ' Translate' },
  --     { '<leader>mk', mode = { 'n', 'x' }, '<Cmd>TransPlay<CR>', desc = ' Auto Play' },
  --     -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
  --     { '<leader>mi', '<Cmd>TranslateInput<CR>', desc = ' Translate From Input' },
  --   },
  --   dependencies = { 'kkharji/sqlite.lua', },
  --   opts = {
  --     -- your configuration there
  --   }
  -- },
}
