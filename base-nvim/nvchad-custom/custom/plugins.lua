local overrides = require "custom.configs.overrides"

--@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        -- "jose-elias-alvarez/null-ls.nvim",
        -- config = function()
        --   require "custom.configs.null-ls"
        -- end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    init = function()
      require("core.utils").lazy_load "nvim-surround"
    end,
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- event = "VeryLazy",
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
    init = function()
      require("core.utils").lazy_load "hop.nvim"
    end,
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
      require("custom.configs.hop")
    end,
  },
  {
    "szw/vim-maximizer",
    init = function()
      require("core.utils").lazy_load "vim-maximizer"
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("symbols-outline").setup()
    end,
  },
  {
    "kevinhwang91/promise-async",
    init = function()
      require("core.utils").lazy_load "promise-async"
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    init = function()
      require("core.utils").lazy_load "nvim-ufo"
    end,
    config = function()
      require("ufo").setup {
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      }
    end,
  },
  {
    "eandrju/cellular-automaton.nvim",
    ft = { "c", "cpp", "lua" },
    config = function()
      require("custom.configs.automaton")
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function()
      vim.fn["mkdp#util#install"]()
      require("custom.configs.markdown-preview")
    end,
  },
  {
    "mg979/vim-visual-multi",
    keys = { "<C-n>", "<C-UP>", "<C-DOWN>", { "<C-n>", mode = "v" } },
    branch = "master",
    -- config = function()
    -- end,
  },
  {
    "kdheepak/lazygit.nvim",
    keys = { "<leader>lg" },
    config = function()
      -- require("telescope").load_extension("lazygit")
      require("custom.configs.lazygit")
    end
  },
  {
    "mbbill/undotree",
    keys = "<leader>u",
    config = function()
      require("custom.configs.undotree")
    end
  },
  {
    "theniceboy/joshuto.nvim",
    keys = { "<leader>jo" },
    config = function()
      require("custom.configs.joshuto")
    end
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
    "folke/zen-mode.nvim",
    opts = require("custom.configs.zen-mode"),
    keys = {
      { "<leader>zm", "<cmd>ZenMode<cr>", desc = "Toggle zen-mode" }
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    keys = {
      { "<leader>fy", "<cmd>Telescope symbols<cr>", desc = "Symblos list" },
    },
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = require("custom.configs.barbecue"),
    init = function()
      require("core.utils").lazy_load "barbecue"
    end,
  },
  {
    "JuanZoran/Trans.nvim",
    build = function() require 'Trans'.install() end,
    keys = {
      -- 可以换成其他你想映射的键
      { '<leader>mm', mode = { 'n', 'x' },       '<Cmd>Translate<CR>',             desc = ' Translate' },
      { '<leader>mk', mode = { 'n', 'x' },       '<Cmd>TransPlay<CR>',             desc = ' Auto Play' },
      -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
      { '<leader>mi', '<Cmd>TranslateInput<CR>', desc = ' Translate From Input' },
    },
    dependencies = { 'kkharji/sqlite.lua', },
    opts = {
      -- your configuration there
    }
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
}

return plugins
